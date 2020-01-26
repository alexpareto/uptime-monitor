FROM alpine:3.8

# add necessary types
RUN apk add --no-cache curl bash

COPY check_services.sh /check_services.sh
COPY twilio-sms.sh /twilio-sms.sh
CMD /check_services.sh