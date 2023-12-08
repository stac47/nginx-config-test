FROM ruby:3.2

EXPOSE 4567

RUN gem install sinatra \
    && gem install puma

RUN mkdir /app

WORKDIR /app

ENV APP_ENV=production

COPY myapp.rb /app

CMD ruby myapp.rb
