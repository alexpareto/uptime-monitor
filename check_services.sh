#!/bin/bash
SITES=($MONITOR_URLS)
for site in "${SITES[@]}"; do
  if curl -s --head  --request GET $site | grep -E -- 'HTTP/2 200|200 OK' > /dev/null; then 
    echo "$site is UP"
  else
    echo "$site is DOWN. Sending sms"
    echo "$site is DOWN." | ./twilio-sms.sh -d $TWILIO_CALLER_ID -u $TWILIO_ACCOUNT_SID -p $TWILIO_AUTH_TOKEN $ALERT_NUMBER
  fi
done
