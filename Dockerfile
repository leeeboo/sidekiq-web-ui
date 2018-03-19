FROM ruby

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
COPY config.ru config.ru

RUN bundle install

EXPOSE 9292

CMD bundle exec rackup -o 0.0.0.0 config.ru
