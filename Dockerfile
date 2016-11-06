FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /work
WORKDIR /work
ADD ./rails /work
RUN bundle install

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

