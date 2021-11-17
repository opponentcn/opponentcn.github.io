#!/bin/bash
cd /home/citing/njucm-passport
Date=$(date +'%m%d')
Date_before=$(date -d"-2 day" +%m%d)
Date_md5="$(echo -n "$Date" | md5sum)"
Date_before_md5="$(echo -n "$Date_before" | md5sum)"
echo ${Date}--MD5=${Date_md5:0:4}
echo ${Date_before}--MD5=${Date_before_md5:0:4}
mv ${Date_before_md5}/ ${Date_md5}/
git add ${Date_md5}/
git rm -r ${Date_before_md5}/
git commit -m"${Date}-${Date_before_md5}+${Date_md5}"
git push origin main

