FROM golang:alpine as builder
RUN mkdir /app
ADD . /app 
WORKDIR /app 
RUN go build -o main .
CMD ["/app/main"]

# To run dockerfile, run docker build -t docker-test(project name) .
# To view image, run docker image ls