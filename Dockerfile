FROM nginx:1.23.4-alpine

# Copy the nginx configuration files
WORKDIR /app/shlokas-balancer
COPY . .

# Run nginx
CMD ["run.sh"]
