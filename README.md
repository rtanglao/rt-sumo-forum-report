# rt-sumo-forum-report
monthly sumo forum report, will hopefully be rendered obsolete by better code real soon now :-)

## 25march2020 get number answered within 72 hours for firefox 74 march 10-25, 2020

```bash
# following file is obtained by running get script in rt-kits-api2
# https://github.com/rtanglao/rt-kits-api2/blob/master/202003/2020-03-10-2020-03-25-firefox-creator-answers-desktop-all-locales.csv
cp ../../rt-kits-api2/202003/2020-03-10-2020-03-25-firefox-creator-answers-desktop-all-locales.csv .
../print-question-desktop-en-us-responded-in-24-responded-in-72hours.rb \
2020-03-10-2020-03-25-firefox-creator-answers-desktop-all-locales.csv
mlr --csv cut -f responded_in_72h forum-ff-desktop-en-us-response-report-2020-03-10-2020-03-25-firefox-creator-answers-desktop-all-locales.csv | grep true | wc -l
483
```

## 03march2020 counting number of support question for the last 6 months
```bash
../get-creator-answers-questions-for-arbitrary-time-period.rb 2019 9 1 2020 2 29
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
