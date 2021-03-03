FROM golang:latest AS go
WORKDIR /app
COPY ./main.go main.go
RUN go build main.go
CMD [ "./main" ]