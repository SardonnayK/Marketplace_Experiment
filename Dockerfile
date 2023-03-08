FROM sylius/standard:1.11-traditional

# install mysql client
RUN apt update
RUN apt install -y mysql-server
RUN service mysql stop
RUN usermod -d /var/lib/mysql/ mysql
RUN service mysql start
RUN service mysql start
RUN composer create-project bitbag/open-marketplace project
RUN apt install -y curl

WORKDIR /marketplace/project

RUN bin/console doctrine:database:create
RUN bin/console doctrine:schema:create

RUN yarn install && \
    yarn encore dev

RUN bin/console assets:install


RUN curl -sS https://get.symfony.com/cli/installer | bash
RUN mv /root/.symfony5/bin/symfony /usr/local/bin/symfony


ENTRYPOINT [ "sh" ]
