FROM golang:1.21-alpine AS builder

WORKDIR /app

COPY go.mod .
COPY main.go .

RUN go mod tidy && go build -o go-app

FROM alpine:latest

ENV GREETING_MESSAGE=Hello

WORKDIR /app

COPY --from=builder /app/go-app .

EXPOSE 8080

CMD ["./go-app"]
