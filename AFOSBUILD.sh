rm -rf /opt/ANDRAX/mitmproxy

cp -Rf andraxbin/* /opt/ANDRAX/bin

chmod -R 755 /opt/ANDRAX/bin

WORKDIR=$(pwd)

cp -Rf $(pwd) /opt/ANDRAX/mitmproxy

cd /opt/ANDRAX/mitmproxy

/opt/ANDRAX/python38/bin/python3 -m venv venv

venv/bin/pip install -e ".[dev]"

cd $WORKDIR
