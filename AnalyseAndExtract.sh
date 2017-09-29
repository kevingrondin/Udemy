#!bin/bash

for i in {1..3}
do
  curl -L https://udemycoupon.learnviral.com/coupon-category/development/page/$i/ >> result.txt
  curl -L http://www.anycouponcode.net/category/online-course/udemy/page/$i/ >> result.txt
  curl -L http://mhfree.com/category/free-courses/programming/page/$i/ >> result.txt
  curl -L http://nulledpk.com/category/web-development/page/$i/ >> result.txt
  curl -L https://onlinecourses.ooo/coupon-tag/100-off-udemy-coupon/page/$i/ >> result.txt
done

curl -L https://www.desidime.com/stores/udemy >> result.txt
curl -L http://www.promocoupons24.com/search/label/Programming >> result.txt
