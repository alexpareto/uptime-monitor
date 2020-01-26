FROM ubuntu:14.04
COPY check_services.sh /check_services.sh
COPY twilio-sms.sh /twilio-sms.sh
CMD /check_services.sh