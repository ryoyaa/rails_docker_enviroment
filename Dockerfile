# 11.24での安定版を取得
FROM ruby:2.5.7

RUN apt-get update -qq && apt-get install -y nodejs mysql

RUN mkdir /app_name
ENV ROOT / app_name
WORKDIR $ROOT
ADD Gemfile /${ROOT}/Gemfile
ADD Gemfile.lock /${ROOT}/Gemfile.lock

RUN bundle install
ADD . ${ROOT}


