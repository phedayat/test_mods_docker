FROM golang:latest

WORKDIR /workspace
COPY install.sh /workspace

RUN chmod u+x install.sh && ./install.sh

ENTRYPOINT ["bash"]
