sudo apt update
sudo apt upgrade --yes
apt install python-pip --yes
pip install pycfdns
if [ ! -d "/opt/ddns" ]; then
  mkdir /opt/ddns
fi
wget https://raw.githubusercontent.com/Tech-Blog/cloudflare-ddns/master/ddns.py -O /opt/ddns/ddns.py
wget https://raw.githubusercontent.com/Tech-Blog/cloudflare-ddns/master/settings.sh -O /tmp/settings.sh
bash /tmp/settings.sh
