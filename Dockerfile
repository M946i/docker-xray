FROM alpine:latest

WORKDIR /home/choreouser

COPY ./* /home/choreouser/

RUN chmod +x web.js

CMD ["/home/choreouser/web.js", "-c", "/home/choreouser/config.json"]

USER 10008
