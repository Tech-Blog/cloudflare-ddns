sudo apt update
apt install python-pip --yes
pip install pycfdns

echo Enter your cloudflare account email
read -p 'Email Address: ' usermail
echo Enter your cloudflare Api Key
read -p 'Cloudflare Api: ' userapi
echo Enter your Domain Name 
read -p 'Domain Name: ' userdomain
echo Enter records to update
read -p 'records: ' userrecords
echo Thankyou $uservar we now have your login details $passvar

while read a ; do echo ${a//_token/$userapi} ; done < /opt/ddns/ddns.py > /opt/ddns/ddns.py.t ; mv /opt/ddns/ddns.py{.t,}
while read a ; do echo ${a//_email/$usermail} ; done < /opt/ddns/ddns.py > /opt/ddns/ddns.py.t ; mv /opt/ddns/ddns.py{.t,}
while read a ; do echo ${a//_zone/$userdomain} ; done < /opt/ddns/ddns.py > /opt/ddns/ddns.py.t ; mv /opt/ddns/ddns.py{.t,}
while read a ; do echo ${a//_subdomains/$userrecords} ; done < /opt/ddns/ddns.py > /opt/ddns/ddns.py.t ; mv /opt/ddns/ddns.py{.t,}

rm install.sh
