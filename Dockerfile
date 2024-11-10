# Dockerfile for running CartoCSS

FROM node:17.3.0-alpine3.12

ENV CARTO_VERSION=5.9.0

# install CartoCSS
RUN npm install -g \
    carto@1.2.0

# install openstreetmap-carto into /code
RUN cd /tmp && \
    wget -q -O - https://github.com/gravitystorm/openstreetmap-carto/archive/v${CARTO_VERSION}.tar.gz \
    | tar xzf - && \
    mv openstreetmap-carto-${CARTO_VERSION} /code

# define workdir after installing or it will be created
WORKDIR /code

CMD ["carto", "--api", "3.0.22", "project.mml"]
