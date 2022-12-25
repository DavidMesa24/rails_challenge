FROM ruby:3.0.2

WORKDIR /ror
COPY . /ror
RUN gem install bundler
RUN bundle install

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]