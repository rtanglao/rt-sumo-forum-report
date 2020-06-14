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


if ARGV.length < 1
  puts "usage: #{$0} [sumoquestions.csv]"   
  exit
end

FILENAME = ARGV[0]

csv  = []
headers = ['id', 'created', 'product'] 
CSV.foreach(FILENAME, :headers => true) do |row|
  logger.debug row.ai
  
  id = row["id"]
  product = row["product"]
  created = row["created"]
  
  csv.push [ id, created, product]

end

FORUM_RESPONSE_FILENAME = sprintf("question-product-created-response-report-%s", FILENAME)
CSV.open(FORUM_RESPONSE_FILENAME, "w", write_headers: true, headers: headers) do |csv_object|
  csv.each {|row_array| csv_object << row_array }
end
