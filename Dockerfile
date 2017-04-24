# Guide here:
# https://github.com/KyleAMathews/docker-nginx

# Build docker file
# docker build -t CONTAINERNAME .

# Build from this repo's image
FROM kyma/docker-nginx

# Example if you wanna swap the default server file.
# COPY path/to/your/default /etc/nginx/sites-enabled/default

# Add src.
COPY src/ /var/www

# Make port 80 available to the world outside this container
# EXPOSE 80

# Define environment variable
ENV NAME World

CMD 'nginx'
