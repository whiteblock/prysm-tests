FROM gcr.io/prysmaticlabs/prysm/bootnode as FOO
FROM ubuntu:latest 
COPY --from=FOO /app/tools/bootnode/image.binary /app/tools/bootnode/image.binary
RUN apt-get update && apt-get install ca-certificates -y

ENTRYPOINT [ "/bin/sh" ]