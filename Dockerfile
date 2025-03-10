ARG BUILD_FROM=homeassistant/amd64-addon-base
FROM ${BUILD_FROM}

# Install FFmpeg (using apk since the base image is Alpine based)
RUN apk add --no-cache ffmpeg

# Copy the startup script into the container
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]