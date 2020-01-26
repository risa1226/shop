FROM ruby:2.6.5
ENV APP /app
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev default-mysql-client && apt-get install -y vim wget nodejs yarn ffmpeg
RUN mkdir $APP
WORKDIR $APP
COPY src/Gemfile $APP/Gemfile
COPY src/Gemfile.lock $APP/Gemfile.lock
RUN bundle install
COPY src $APP