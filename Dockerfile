FROM node:10.10.0-slim
LABEL maintainer="fmanuela499@gmail.com"
RUN mkdir app
COPY PREGUNTAS.md /app
WORKDIR /app
RUN cd /app && cat PREGUNTAS.md
