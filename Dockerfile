FROM golang

ADD . /go/src/github.com/lwander/k8s-demo

RUN go install github.com/mnejat/spin-kub-demo

ADD ./content /content

ENTRYPOINT /go/bin/k8s-demo
