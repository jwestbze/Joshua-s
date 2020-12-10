
#!/bin/bash/
curl -s http://ipinfo.io/104.223.95.86 | grep country | awk -F: '{print $2}'
curl -s http://ipinfo.io/133.18.55.255 | grep country | awk -F: '{print $2}'
curl -s http://ipinfo.io/41.34.55.255 | grep country | awk -F: '{print $2}'
curl -s http://ipinfo.io/187.54.23.8 | grep country | awk -F: '{print $2}'
