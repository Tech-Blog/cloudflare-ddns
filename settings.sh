#!/bin/bash
echo Enter your cloudflare account email
read -p 'Email Address: ' usermail
echo Enter your cloudflare Api Key
read -p 'Cloudflare Api: ' userapi
echo Enter your Domain Name (domain.com etc)
read -p 'Domain Name: ' userdomain
echo Enter records to update (without the domain, for example: for a.domain.com press only a).
echo you can use multiple records like this: 'a','b','c'
read -p 'records: ' userrecords
echo Thankyou $uservar we now have your login details $passvar

sed -i -e 's/[token]/$userapi/g' /opt/ddns/ddns.py
sed -i -e 's/[email]/$usermail/g' /opt/ddns/ddns.py
sed -i -e 's/[zone]/$userdomain/g' /opt/ddns/ddns.py
sed -i -e 's/[records]/[$userrecords]/g' /opt/ddns/ddns.py
