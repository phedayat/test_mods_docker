FROM debian:latest

WORKDIR /workspace
COPY install.sh /workspace

RUN apt update -y && apt install curl -y
RUN chmod u+x install.sh && ./install.sh

ENTRYPOINT ["bash"]
