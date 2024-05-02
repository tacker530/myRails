FROM ruby:3.1

WORKDIR /apps

COPY Gemfile /apps/Gemfile
COPY Gemfile.lock /apps/Gemfile.lock

RUN bundle install

CMD ["rails", "server", "-b", "0.0.0.0"]
