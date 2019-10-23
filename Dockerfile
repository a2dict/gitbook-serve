FROM node:10

RUN mkdir /mdbook && mkdir /work
WORKDIR /work

RUN npm i -g gitbook-cli && \
    gitbook --version

COPY run.sh /run.sh
RUN chmod +x /run.sh
CMD [ "/run.sh" ]

EXPOSE 8080