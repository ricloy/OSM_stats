#!/bin/bash

curl -s 'https://planet.openstreetmap.org/statistics/data_stats.html' | sed '/Top 50 users for uploads of GPS data/,/Number of users editing over the past/{/Number of users editing over the past/!d};/Top users editing/,/Report took/{/Report took/!d}' >./out/report_$(date +'%Y-%m-%d').html
