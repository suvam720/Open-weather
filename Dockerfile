FROM golang:1.18.1-alpine3.15
WORKDIR /api
COPY . .
RUN go mod download
RUN apk add git
RUN go build -o /weather
EXPOSE 8080
CMD ["/weather"]