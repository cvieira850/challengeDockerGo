FROM golang:latest AS go
WORKDIR /app
COPY ./main.go main.go
RUN go build main.go

FROM scratch
WORKDIR /app
COPY --from=go /app/main ./main
CMD [ "./main" ]