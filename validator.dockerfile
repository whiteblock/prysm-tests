FROM gcr.io/prysmaticlabs/prysm/validator:latest as FOO
FROM alpine:latest 
COPY --from=FOO /app/validator/image.binary /app/validator/image.binary

ENTRYPOINT [ "/bin/sh" ]