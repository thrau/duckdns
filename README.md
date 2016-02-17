duckdns convenience script
==========================

This script allows you to easily configure duckdns. Simply edit the `duckdns.properties`

Add this to your crontab (`crontab -e`):

    */5 * * * * ~/duckdns/duckdns.sh >/dev/null 2>&1

where `~/duckdns/duckdns.sh` should be the path to the script
