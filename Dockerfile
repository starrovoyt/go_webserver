FROM golang:1.15

RUN mkdir /appbb
ADD . /app
WORKDIR /app
RUN go build -o main .
EXPOSE 8080
CMD ["/app/main"]
