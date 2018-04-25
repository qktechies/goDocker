FROM golang

RUN mkdir -p /go/src/goDocker
RUN mkdir -p /go/bin/

WORKDIR /go/src/goDocker
ADD . /go/src/goDocker

RUN go get github.com/lib/pq
RUN go install goDocker

EXPOSE 8080

ENTRYPOINT ["/go/bin/goDocker"]

