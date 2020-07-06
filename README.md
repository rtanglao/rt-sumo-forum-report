# rt-sumo-forum-report
monthly sumo forum report, will hopefully be rendered obsolete by better code real soon now :-)

## 05july2020 get by week for all products

```bash
cd /home/roland/GIT/rt-sumo-forum-report/BY_WEEK
```

## 13june2020 % SUMO forum questions replied w/in 72 hours for may and june 2020 for all products

* see [%SUMO forum questions replied w/in 72 hours for may and june (1-13) 2020](https://docs.google.com/spreadsheets/d/1MLXgTFzqcCVZYC4a-x2Jr-00EhpuvjGixvxip4n5jAo/edit#gid=0)

```bash
cd /home/roland/GIT/rt-sumo-forum-report/2019_AND_2020_UNTIL_12JUNE_FOR_JR
../get-all-products-creator-answers-questions-for-arbitrary-time-period.rb 2020 5 1 2020 5 3
wc -l 2020-05-01-2020-05-31-allproducts-creator-answers-desktop-all-locales.csv 
3319 # 3318 questions ! have to subtract one because line 1 is the header line
grep ",firefox," 2020-05-01-2020-05-31-allproducts-creator-answers-desktop-all-locales.csv | wc -l
2025
grep ",thunderbird," 2020-05-01-2020-05-31-allproducts-creator-answers-desktop-all-locales.csv | wc -l
# all in 1 script
 % ../get-question-count-all-products.sh 2020-05-01-2020-05-31-allproducts-creator-answers-desktop-all-locales.csv
2025
615
398
2
6
65
48
124
3
1
3
2
14
6
11
0
# get # of questions answered in 24 and 72 hours 
../print-question-product-responded-in-24-responded-in-72hours.rb \
2020-05-01-2020-05-31-allproducts-creator-answers-desktop-all-locales.csv
grep ,firefox, \
forum-response-report-2020-05-01-2020-05-31-allproducts-creator-answers-desktop-all-locales.csv\
| wc -l
2023
 grep firefox forum-response-report-2020-05-01-2020-05-31-allproducts-creator-answers-desktop-all-locales.csv | mlr --inidx --ifs comma --oxtab cut -f 5 | grep true | wc -l
1547
grep ,thunderbird, \
forum-response-report-2020-05-01-2020-05-31-allproducts-creator-answers-desktop-all-locales.csv\
| wc -l
615
grep thunderbird forum-response-report-2020-05-01-2020-05-31-allproducts-creator-answers-desktop-all-locales.csv | mlr --inidx --ifs comma --oxtab cut -f 5 | grep true | wc -l
453
../get-count-num-answered-72hours.sh forum-response-report-2020-05-01-2020-05-31-allproducts-creator-answers-desktop-all-locales.csv
top-all-locales.csv
2023
1465
615
453
398
240
0
0
6
3
65
29
48
30
124
45
3
1
0
0
3
0
2
1
14
7
6
3
11
8
0
0
# start of june 1-13, 2020
../get-all-products-creator-answers-questions-for-arbitrary-time-period.rb 2020 6 1 2020 6 13
../print-question-product-responded-in-24-responded-in-72hours.rb \
2020-06-01-2020-06-13-allproducts-creator-answers-desktop-all-locales.csv
../get-count-num-answered-72hours.sh forum-response-report-2020-06-01-2020-06-13-allproducts-creator-answers-desktop-all-locales.csv
```

## 25march2020 get number answered within 72 hours for firefox 74 march 10-25, 2020

```bash
# following file is obtained by running get script in rt-kits-api2
# https://github.com/rtanglao/rt-kits-api2/blob/master/202003/2020-03-10-2020-03-25-firefox-creator-answers-desktop-all-locales.csv
cp ../../rt-kits-api2/202003/2020-03-10-2020-03-25-firefox-creator-answers-desktop-all-locales.csv .
../print-question-desktop-en-us-responded-in-24-responded-in-72hours.rb \
2020-03-10-2020-03-25-firefox-creator-answers-desktop-all-locales.csv
mlr --csv cut -f responded_in_72h \
forum-ff-desktop-en-us-response-report-2020-03-10-2020-03-25-firefox-creator-answers-desktop-all-locales.csv\
| grep true | wc -l
483
```

## 03march2020 counting number of support question for the last 6 months
```bash
../get-all-products-creator-answers-questions-for-arbitrary-time-period.rb 2019 9 1 2020 2 29
../print-question-product.rb 2019-09-01-2020-02-29-allproducts-creator-answers-desktop-all-locales.csv
ls *.csv
git add question-product-created-response-report-2019-09-01-2020-02-29-allproducts-creator-answers-desktop-all-locales.csv
git commit -m "add id, created, product file for 2019sept-2020feb"
git push
wc -l question-product-created-response-report-2019-09-01-2020-02-29-allproducts-creator-answers-desktop-all-locales.csv
grep mobile question-product-created-response-report-2019-09-01-2020-02-29-allproducts-creator-answers-desktop-all-locales.csv
grep mobile question-product-created-response-report-2019-09-01-2020-02-29-allproducts-creator-answers-desktop-all-locales.csv | wc -l
grep firefox-preview question-product-created-response-report-2019-09-01-2020-02-29-allproducts-creator-answers-desktop-all-locales.csv | wc -l
grep firefox-lite question-product-created-response-report-2019-09-01-2020-02-29-allproducts-creator-answers-desktop-all-locales.csv | wc -l
grep firefox-lockwise question-product-created-response-report-2019-09-01-2020-02-29-allproducts-creator-answers-desktop-all-locales.csv | wc -l
grep firefox-reality question-product-created-response-report-2019-09-01-2020-02-29-allproducts-creator-answers-desktop-all-locales.csv | wc -l
grep screenshot question-product-created-response-report-2019-09-01-2020-02-29-allproducts-creator-answers-desktop-all-locales.csv | wc -l
grep go question-product-created-response-report-2019-09-01-2020-02-29-allproducts-creator-answers-desktop-all-locales.csv | wc -l
grep vpn question-product-created-response-report-2019-09-01-2020-02-29-allproducts-creator-answers-desktop-all-locales.csv | wc -l
view question-product-created-response-report-2019-09-01-2020-02-29-allproducts-creator-answers-desktop-all-locales.csv
```
