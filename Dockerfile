FROM golang:1.11-alpine

# Install govendor
RUN go get github.com/kardianos/govendor

# Installing gometalinter
RUN  go get -u gopkg.in/alecthomas/gometalinter.v2 &&  gometalinter.v2 --install

# Installing gocov to output code coverage for sonarqube
RUN go get github.com/axw/gocov/... && \
  go get github.com/AlekSi/gocov-xml

# Install JUnit style plugin for sonarqube
RUN go get -u github.com/jstemmer/go-junit-report