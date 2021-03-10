rm -rf /opt/ANDRAX/mitmproxy

cp -Rf andraxbin/* /opt/ANDRAX/bin

chmod -R 755 /opt/ANDRAX/bin

/opt/ANDRAX/python38/bin/python3 -m venv venv

venv/bin/pip install -e ".[dev]"

cp -Rf $(pwd) /opt/ANDRAX/mitmproxy
