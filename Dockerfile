FROM golang

ADD . /go/src/goDocker
WORKDIR /go/src/goDocker

RUN go get github.com/lib/pq
RUN go install github.com/sausheong/ws-d

ENTRYPOINT /go/bin/ws-d

EXPOSE 8080