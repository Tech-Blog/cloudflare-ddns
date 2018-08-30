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

sed -i -e 's/[token]/$userapi/g' /opt/ddns/ddns.py
sed -i -e 's/[email]/$usermail/g' /opt/ddns/ddns.py
sed -i -e 's/[zone]/$userdomain/g' /opt/ddns/ddns.py
sed -i -e 's/[records]/[$userrecords]/g' /opt/ddns/ddns.py
rm install.sh
