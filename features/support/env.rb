require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require 'webdrivers'


ENVIRONMENT = ENV['ENVIRONMENT']
puts "Environment >> #{ENVIRONMENT}" 

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")

Capybara.configure do |config|
    config.default_driver = :selenium_chrome #browser default
    config.app_host = CONFIG['https://qacoders.dev.br'] #irá abrir nos testes
    config.default_max_wait_time = 10 #tempo máximo de espera para o elemento
end