FROM ruby:2.6.1

LABEL maintainer='mgrigoriev@gmail.com'

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /rails_app

RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
RUN apt-get install -qy nodejs
RUN gem install bundler -v '2.0.1'

COPY Gemfile* ./
RUN bundle install

COPY . ./
RUN cp Docker/database.yml.sample config/database.yml

COPY Docker/start.sh ./

RUN git clone https://github.com/vishnubob/wait-for-it.git
CMD ./wait-for-it/wait-for-it.sh db:5432 -- ./start.sh $RAILS_ENV
