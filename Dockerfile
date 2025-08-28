FROM golang:1.25-alpine

WORKDIR /app

COPY . .

CMD ["go", "run", "server.go"]