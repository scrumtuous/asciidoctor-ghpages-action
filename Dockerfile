# Container image that runs your code
FROM asciidoctor/docker-asciidoctor:1.45

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

RUN apk update && apk add --update openssh-client git-lfs

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
