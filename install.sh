sudo apt update
apt install python-pip --yes
pip install pycfdns requests

echo Enter your cloudflare account email
read -p 'Email Address: ' usermail
echo Enter your cloudflare Api Key
read -p 'Cloudflare Api: ' userapi
echo Enter your Domain Name 
read -p 'Domain Name: ' userdomain
echo Enter records to update
read -p 'records: ' userrecords
while read a ; do echo ${a//_token_/$userapi} ; done < /opt/ddns/ddns.py > /opt/ddns/ddns.py.t ; mv /opt/ddns/ddns.py{.t,}
while read a ; do echo ${a//_email_/$usermail} ; done < /opt/ddns/ddns.py > /opt/ddns/ddns.py.t ; mv /opt/ddns/ddns.py{.t,}
while read a ; do echo ${a//_zone_/$userdomain} ; done < /opt/ddns/ddns.py > /opt/ddns/ddns.py.t ; mv /opt/ddns/ddns.py{.t,}
while read a ; do echo ${a//_subdomains_/$userrecords} ; done < /opt/ddns/ddns.py > /opt/ddns/ddns.py.t ; mv /opt/ddns/ddns.py{.t,}
rm install.sh
