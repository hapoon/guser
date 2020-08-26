FROM golang:1.15.0-alpine AS build
COPY . /go/src/guser
RUN go build -o /go/bin/guser /go/src/guser/cmd/guser/main.go

FROM scratch
COPY --from=build /go/bin/guser /bin/guser
ENTRYPOINT [ "/bin/guser" ]
