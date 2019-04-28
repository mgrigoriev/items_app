FROM nginx

LABEL maintainer='mgrigoriev@gmail.com'

RUN apt-get update -qq && apt-get -y install apache2-utils

ENV RAILS_ROOT /rails_app

WORKDIR $RAILS_ROOT

# RUN mkdir log

COPY public public/
COPY Docker/nginx/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]

# RUN git clone https://github.com/vishnubob/wait-for-it.git
# CMD ./wait-for-it/wait-for-it.sh app:3000 -- nginx -g daemon off;
