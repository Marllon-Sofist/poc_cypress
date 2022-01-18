ARG RUBY_VERSION=2.7.0
ARG BROWSER=NONE
#=========
#BASE IMAGE
#=========
FROM ruby:${RUBY_VERSION} as base-ruby
MAINTAINER Engenharia <devops-team@dasa.com.br>
#RUN start service syslog-ng, sending data/log to dasa security team server
RUN apt-get update -yqq
RUN apt-get install -yqq software-properties-common debconf-utils
RUN apt-get install -yqq syslog-ng-core
RUN echo "*.* @10.120.200.5:514" >> /etc/syslog.conf


# #=========
# # CHROME-IMAGE, If team pass argument BROWSER=CHROME, then Install chrome browser
# #=========
# FROM base-ruby AS base-ruby-CHROME

# RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
#   && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list \
#   && apt-get update -qqy \
#   && apt-get -qqy install google-chrome-stable \
#   && rm /etc/apt/sources.list.d/google-chrome.list
# #chromedriver
# RUN gem install chromedriver-helper && chromedriver-update 2.38
# #fixing chromedriver version because ipv6 issue https://github.com/flavorjones/chromedriver-helper/issues/75


# #=========
# # FIREFOX-IMAGE, If team pass argument BROWSER=FIREFOX, then Install firefox browser
# #=========
# FROM base-ruby AS base-ruby-FIREFOX
# RUN mkdir /opt/firefox
# RUN wget --no-verbose -O /tmp/firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US" \
# #RUN wget -O /tmp/firefox.tar.bz2 "https://download-installer.cdn.mozilla.net/pub/firefox/releases/65.0/linux-x86_64/en-US/firefox-65.0.tar.bz2" \
#    && rm -rf /opt/firefox \
#    && tar -C /opt -xjf /tmp/firefox.tar.bz2 \
#    && rm /tmp/firefox.tar.bz2 \
#    && ln -fs /opt/firefox /usr/bin/firefox
# ENV PATH="/usr/bin/firefox:${PATH}"
# RUN apt-get update -qqy \
#    && apt-get -qqy install libgtk-3-dev

# # GeckoDriver for firefox
# RUN gem install geckodriver-helper && gecko_updater


#=========
#DO MORE NOTHINK if none browser was pointed, and make a IMAGE ONLY WITH RUBY.
#=========
FROM base-ruby as base-ruby-NONE


#=========
#YOUR TEST APP CONTAINERIZED, based in image builded by arguments
#=========
FROM base-ruby-${BROWSER} as base-ruby-final
# Creates Application root
RUN mkdir -p /APP_ACCEPT_TESTS
WORKDIR /APP_ACCEPT_TESTS
# Ensure gems are cached and only get updated when they change
COPY Gemfile ./
RUN bundle install
# Copy aplication code from work station
COPY . /APP_ACCEPT_TESTS