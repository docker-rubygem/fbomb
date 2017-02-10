FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=4.1.0

RUN gem install fbomb --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["fbomb"]
CMD ["--help"]
