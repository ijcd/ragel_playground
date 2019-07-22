FROM ruby

ENV GEM_HOME="/usr/local/bundle"
ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH

WORKDIR /app

COPY Gemfile Gemfile.lock ./
COPY gems ./gems

RUN bundle install

RUN apt-get update && apt-get install -y ragel graphviz

ADD . .

CMD ["bundle", "exec", "volt", "server"]
