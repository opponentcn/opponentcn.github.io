#!/bin/bash
Date=$(date +'%m%d')
Date_before=$(date -d"-2 day" +%m%d)
echo ${Date}
echo ${Date_before}
mv ${Date_before}/ ${Date}/
git add *
git commit -m"${Date}"
git push origin main

