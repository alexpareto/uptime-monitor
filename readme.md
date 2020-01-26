# Uptime Monitor

Because paying \$10/month for something to ping your personal projects feels like theft.

This is a bash script that does a simple GET request to the URLs that you specify in environment variables. If it fails, it will send a sms message to the

Will want to set the following environment variables:

```
# whitespace separated urls to monitor
MONITOR_URLS="https://alexpareto.com https://www.visualify.io https://www.demeanor.co https://analytics.alexpareto.com"

# twilio config
TWILIO_ACCOUNT_SID=
TWILIO_CALLER_ID=
TWILIO_AUTH_TOKEN=

# phone number you want to be alerted at
ALERT_NUMBER=
```
