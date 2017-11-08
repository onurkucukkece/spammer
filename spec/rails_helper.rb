require 'spec_helper'
require 'capybara/rspec'
require 'faker'

# Capybara
Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

RSpec.configure do |config|
  config.include Capybara::DSL
end