FROM ruby:3.3.1
USER root
WORKDIR /build
COPY . /build
RUN cd /build && \
    bundle install --gemfile=/build/Gemfile
# ENTRYPOINT [ "/usr/local/bundle/bin/wayback_machine_downloader" ]
ENTRYPOINT [ "bundle", "exec", "--gemfile=/build/Gemfile", "wayback_machine_downloader" ]