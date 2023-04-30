FROM nginx:1.23.4-alpine
ARG BALANCER_VERSION=dev

# Copy the nginx configuration files
WORKDIR /app/shlokas-balancer
COPY . .
RUN echo "VERSION=${BALANCER_VERSION}" > .meta

# Run nginx
CMD ["/app/shlokas-balancer/run.sh"]
