FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    g++ \
    git \
    unzip \
    zip \
    curl \
    libonig-dev \
    libzip-dev \
    libbz2-dev \
    libfreetype6-dev \
    libicu-dev \
    libjpeg-dev \
    libmcrypt-dev \
    libpng-dev \
    libreadline-dev \
    && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install \
    bcmath \
    calendar \
    iconv \
    intl \
    mbstring \
    opcache \
    pdo_mysql \
    zip \
    gd \
    json
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN pecl install redis && docker-php-ext-enable redis

COPY . /var/www/html

WORKDIR /var/www/html

# RUN composer install

CMD php artisan serve --host=0.0.0.0 --port=8000

EXPOSE 8000
