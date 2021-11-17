#!/bin/bash
cd /home/citing/njucm-passport
Date=$(date +'%m%d')
Date_before=$(date -d"-2 day" +%m%d)
echo ${Date}
echo ${Date_before}
mv ${Date_before}/ ${Date}/
git add ${Date}/
git rm -r ${Date_before}/
git commit -m"${Date}"
git push origin main

