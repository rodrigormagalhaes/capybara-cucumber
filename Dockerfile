FROM selenium/standalone-chrome
MAINTAINER Rodrigo R M
COPY . /usr/local/capybara-cucumber
WORKDIR /usr/local/capybara-cucumber
RUN apt-get install ruby-full
RUN gem install bundler
RUN bundle install
ENTRYPOINT ["cucumber"]
CMD [""]