require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper.rb'
require 'capybara-screenshot/cucumber'
require 'webdrivers'

ENVIRONMENT = ENV['ENVIRONMENT']
BROWSER = ENV['BROWSER']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environments/#{ENVIRONMENT}.yml")

World(PageObjects)

Selenium::WebDriver::Firefox::Binary.path = "/usr/bin/firefox"

Capybara.save_path = Dir.pwd + "/screenshots"

Capybara.register_driver :selenium do |app|
    if BROWSER.eql?('chrome')
        Capybara::Selenium::Driver.new(app, :browser => :chrome)
    
    elsif BROWSER.eql?('chrome_headless')
        Capybara::Selenium::Driver.new(app, :browser => :chrome, 
            desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
                'chromeOptions' => {'args' =>['--headless', 'disable-gpu']} 
            )
        )       

    elsif BROWSER.eql?('firefox')
        Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette => true)

    elsif BROWSER.eql?('firefox_headless')
        browser_options = Selenium::WebDriver::Firefox::Options.new(args: ['--headless'])
        Capybara::Selenium::Driver.new(app, :browser => :firefox, options: browser_options)

    elsif BROWSER.eql?('ie')
        Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
    
    elsif BROWSER.eql?('safari')
        Capybara::Selenium::Driver.new(app, :browser => :safari)
    end
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = CONFIG['default_url']
    config.default_max_wait_time = 5
end