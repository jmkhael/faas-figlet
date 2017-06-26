FROM alpine

RUN apk update && apk upgrade
RUN apk add figlet

ADD https://github.com/alexellis/faas/releases/download/0.5.6-alpha/fwatchdog /usr/bin
RUN chmod +x /usr/bin/fwatchdog

ENV fprocess="figlet"
CMD ["fwatchdog"]
