FROM alpine:latest

# Environment
ENV ENV /etc/profile

# General
RUN apk update
RUN mv /etc/profile.d/color_prompt /etc/profile.d/color_prompt.sh

# Timezone
RUN apk add --no-cache tzdata

# Lighttpd
RUN apk add --no-cache lighttpd
COPY lighttpd.conf /etc/lighttpd/lighttpd.conf
RUN mkdir /data
RUN echo "<html><body>Lighttpd</body></html>" > /data/index.html

# Network
EXPOSE 80/tcp

# Entrypoint
ENTRYPOINT ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
