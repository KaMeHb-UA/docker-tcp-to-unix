FROM alpine

RUN apk --no-cache add socat

ENTRYPOINT rm -rf $UNIX && socat UNIX-LISTEN:$UNIX,mode=777,reuseaddr,fork TCP:$TCP
