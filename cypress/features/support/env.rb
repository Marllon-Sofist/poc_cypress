
require 'pry'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'json'
require_relative 'pages_helpers.rb'
require_relative 'helpers.rb'
require 'capybara'
require 'capybara/cucumber'
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'report_builder'
require 'date'
require 'site_prism'
require 'webdrivers'


World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(PageObjects)

BROWSER = ENV['BROWSER']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/Config/url.yml")
URL = CONFIG['url_webPage']

Capybara.register_driver :selenium do |app|
	Selenium::WebDriver::Chrome::Options.new.tap do |opts|
		opts.add_argument('--no-sandbox')
		opts.headless!
		opts.add_argument('--disable-dev-shm-usage')
		opts.add_argument('--disable-gpu')
	  end
	# else
	#   Selenium::WebDriver::Firefox::Options.new.tap(&:headless!)
	# end
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = 'https://sofistautomacao.souionicahml.com/viewer'
end

Capybara.default_max_wait_time = 5