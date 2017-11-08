require 'spec_helper'
require 'capybara/rspec'
require 'faker'

# Capybara
Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

# Poltergeist
# require 'capybara/poltergeist'
# Capybara.javascript_driver = :poltergeist
# Capybara.register_driver :poltergeist do |app|
#   Capybara::Poltergeist::Driver.new(app, options)
# end

RSpec.configure do |config|
  config.include Capybara::DSL
end