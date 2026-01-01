FROM golang:1.21-alpine AS builder
WORKDIR /app
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o go-notes .

FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/go-notes .
COPY --from=builder /app/website ./website
ENV ASSETS_PATH=/app/website
EXPOSE 8080
CMD ["./go-notes"]
