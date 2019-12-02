#!/usr/bin/env ruby
require 'json'
require 'rubygems'
require 'awesome_print'
require 'json'
require 'time'
require 'date'
require 'csv'
require 'logger'
require 'typhoeus'

logger = Logger.new(STDERR)
logger.level = Logger::DEBUG

def getKitsuneResponse(url, params, logger)
  logger.debug url
  logger.debug params
  try_count = 0
  begin
    result = Typhoeus::Request.get(
        url,
        :params => params )
    x = JSON.parse(result.body)
  rescue JSON::ParserError => e
    try_count += 1
    if try_count < 4
      $stderr.printf("JSON::ParserError exception, retry:%d\n",\
                     try_count)
      sleep(10)
      retry
    else
      $stderr.printf("JSON::ParserError exception, retrying FAILED\n")
      x = nil
    end
  end
  return x
end

if ARGV.length < 1
  puts "usage: #{$0} [sumoquestions.csv]"   
  exit
end

FILENAME = ARGV[0]

csv  = []
headers = ['id', 'created', 'product', 'responded_in_24h', 'responded_in_72h', 'solved'] 
CSV.foreach(FILENAME, :headers => true) do |row|
  logger.debug row.ai
  answers_str = row["answers"] 
  answers = []
  answers_str.split(";").each {|a| answers.push a.to_i} 
  creator = row['creator']
  created = row["created"]
  id = row["id"]
  product = row["product"]
  is_solved = row['is_solved']
  logger.debug  answers.ai
  url = "https://support.mozilla.org/api/2/answer/"

  url_params = {
    :format => "json",
    :question => id 
  } 

  if answers.empty?  
    csv.push [ id, created, product, "false", "false", is_solved]
    next
  end

  answer_in_24 = false
  answer_in_72 = false
  created_lt_24hours = DateTime.parse(created).next_day(1).to_time.to_i
  created_lt_72hours = DateTime.parse(created).next_day(3).to_time.to_i
  sleep(1)
  answers_array  = getKitsuneResponse(url, url_params, logger) 
  logger.debug answers_array.ai
  answers_array["results"].each do |answer|
    logger.debug answer
    logger.debug answer["creator"]
    answer_username = answer["creator"]["username"]
    next if answer_username == creator
    answer_created = answer['created']
    logger.debug "answer created from API:" + answer_created + "<-- this is PST not UTC despite the 'Z'"
    # All times returned by the API are in PST not PDT and not UTC
    # All URL parameters for time are also in PST not UTC
    # See https://github.com/mozilla/kitsune/issues/3961 and
    # https://github.com/mozilla/kitsune/issues/3946
    # The above may change in the future if we migrate the Kitsune database to UTC
    fixed_answer_created = Time.parse(answer_created.gsub("Z", "PST")) 
    logger.debug "answer_created with PST correction:" + fixed_answer_created.to_s
    answer_created_in_seconds = fixed_answer_created.to_i  
    if answer_created_in_seconds <  created_lt_24hours
      answer_in_24 = true
      answer_in_72 = true
      break
    elsif answer_created_in_seconds <  created_lt_72hours
      answer_in_24 = false
      answer_in_72 = true
      break
    end
  end
  responded_in_24h = answer_in_24 ? "true" : "false"
  responded_in_72h = answer_in_72 ? "true" : "false"
  csv.push [ id, created, product, 
             responded_in_24h, responded_in_72h, is_solved]
end
FORUM_RESPONSE_FILENAME = sprintf("forum-response-report-%s", FILENAME)
CSV.open(FILENAME, "w", write_headers: true, headers: headers) do |csv_object|
  csv.each {|row_array| csv_object << row_array }
end
