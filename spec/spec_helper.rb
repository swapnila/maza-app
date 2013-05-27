require 'rubygems'
require 'simplecov'
SimpleCov.start

# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
# require 'database_cleaner'
require 'rspec/rails'
# require 'rspec/autorun'
# require 'capybara/rspec'
# require 'forgery'
# require 'factory_girl'
# require 'mocha/setup'
require "active_support/testing/setup_and_teardown"
# require 'capybara/poltergeist'

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

# WebMock.disable_net_connect!(:allow_localhost => true)

# VCR.configure do |c|
#   c.ignore_localhost = true
# end

# Capybara.default_wait_time = 15
# Capybara.javascript_driver = :poltergeist
# Capybara.register_driver :poltergeist do |app|
#   Capybara::Poltergeist::Driver.new(app, { js_errors: true, timeout: 60 })
# end

RSpec.configure do |config|
  # config.before(:each) { reset_email }
  config.filter_run :focus => true
  # config.include Capybara::DSL, :type => :request
  # config.include FeatureHelper, type: :request
  # config.include(MailerMacros)
  config.infer_base_class_for_anonymous_controllers = false
  config.mock_with :rspec
  config.order = "random"
  config.run_all_when_everything_filtered = true
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.use_transactional_fixtures = true
end
