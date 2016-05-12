FROM ruby:2.3.1
ADD Gemfile* /app/
WORKDIR /app
RUN bundle install
EXPOSE 3000
CMD ["bundle", "exec", "fake_sqs", "-p", "3000", "--no-daemonize"]
