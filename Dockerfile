FROM selenium/standalone-chrome
MAINTAINER Rodrigo R M
COPY . /usr/local/capybara-cucumber
WORKDIR /usr/local/capybara-cucumber
RUN sudo apt-get install ruby
RUN gem install bundler
RUN bundle install
ENTRYPOINT ["cucumber"]
CMD [""]