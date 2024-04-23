from ubuntu/apache2:2.4-22.04_edge

RUN apt update -y && apt upgrade -y
RUN apt-get install -y ca-certificates apt-transport-https software-properties-common curl
RUN add-apt-repository -y ppa:ondrej/php
RUN apt update -y
RUN apt install -y php8.3
RUN apt install -y libapache2-mod-php8.3 php8.3-gmp php8.3-gd php8.3-soap php8.3-mbstring php8.3-mysql
RUN a2enmod rewrite
RUN mkdir /var/www/WoWSimpleRegistration/
COPY ./app/. /var/www/WoWSimpleRegistration/.
WORKDIR /etc/apache2/sites-available
COPY ./site.conf ./.
RUN a2dissite 000-default.conf
RUN a2ensite site.conf
RUN sed -i 's/Listen 80/Listen 8080/g' /etc/apache2/ports.conf
WORKDIR /var/www/WoWSimpleRegistration/application
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer


