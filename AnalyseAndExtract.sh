#!bin/bash

for i in {1..10}
do
  curl -L https://udemycoupon.learnviral.com/coupon-category/development/page/$i/ >> result.txt
  curl -L http://www.anycouponcode.net/category/online-course/udemy/page/$i/ >> result.txt
  curl -L http://mhfree.com/category/free-courses/programming/page/$i/ >> result.txt
  curl -L http://nulledpk.com/category/web-development/page/$i/ >> result.txt
  curl -L https://onlinecourses.ooo/coupon-tag/100-off-udemy-coupon/page/$i/ >> result.txt
  curl -L https://buzzudemy.com/coupons/page/$i/ >> result.txt
  curl -L http://www.programmingbuddy.club/search?updated-max=2017-09-28T16%3A42%3A00-07%3A00&max-results=8#PageNo=$i >> result.txt
  curl -L http://www.freeoncourses.com/search?updated-max=2017-09-28T03%3A24%3A00-07%3A00&max-results=7#PageNo=$i >> result.txt
done

curl -L https://www.desidime.com/stores/udemy >> result.txt
curl -L http://www.promocoupons24.com/search/label/Programming >> result.txt
curl -L https://medium.com/100-free-udemy-coupons >> result.txt
curl -L http://www.onlinecoursesupdate.com >> result.txt

cat result.txt | sort | uniq -i > fin.txt
rm result.txt

grep -o 'https://www.udemy.com/[[:alnum:]+\.\_\-]*/?[[:alnum:]+\.\_\-]*=[[:alnum:]+\.\_\-]*' fin.txt | sort | uniq -i > urls.txt
rm fin.txt

exit 0
