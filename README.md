# rt-sumo-forum-report
monthly sumo forum report, will hopefully be rendered obsolete by better code real soon now :-)
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
