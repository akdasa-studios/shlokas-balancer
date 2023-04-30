FROM nginx:1.23.4-alpine
LABEL org.opencontainers.image.description "Simple load balancer for the Shlokas project."
ARG BALANCER_VERSION=dev

# Copy the nginx configuration files
WORKDIR /app/shlokas-balancer
COPY . .
RUN echo "VERSION=${BALANCER_VERSION}" > .container/meta

# Run nginx
CMD ["/app/shlokas-balancer/.container/run.sh"]
