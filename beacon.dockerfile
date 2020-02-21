FROM gcr.io/prysmaticlabs/prysm/beacon-chain:latest-debug as FOO
FROM ubuntu:latest 
COPY --from=FOO /app/beacon-chain/image.binary /app/beacon-chain/image.binary
RUN apt-get update && apt-get install ca-certificates -y

ENTRYPOINT [ "/bin/sh" ]