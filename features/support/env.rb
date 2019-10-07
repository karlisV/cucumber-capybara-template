# frozen_string_literal: true

require 'capybara'
require 'capybara-screenshot'
require 'capybara/rspec'
require 'webdrivers'
require 'rspec'

APP_HOST = 'https://www.testdevlab.com'

Capybara.configure do |config|
  config.save_path = 'report/'
  config.default_driver = :selenium
  config.app_host = APP_HOST
  Capybara::Screenshot.prune_strategy = :keep_last_run
end

Capybara.register_driver(:selenium) do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  Capybara::Selenium::Driver.new(app, browser: :chrome,
                                      options: options)
end

World(Capybara::RSpecMatchers)
