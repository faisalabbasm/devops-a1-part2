FROM php:8.1-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the PHP application code into the container
COPY . /var/www/html

EXPOSE 80

CMD ["apache2-foreground"]