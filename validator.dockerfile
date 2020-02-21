FROM gcr.io/prysmaticlabs/prysm/validator:latest as FOO
FROM ubuntu:latest 
COPY --from=FOO /app/validator/image.binary /app/validator/image.binary
RUN apt-get update && apt-get install ca-certificates -y

ENTRYPOINT [ "/bin/sh" ]