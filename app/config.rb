require 'sidekiq'

puts "Loading config"

if ENV['development']
  puts "DEVELOPMENT"
  require 'dotenv'
  Dotenv.load
end

DB_URL = ENV['DB_PORT_6379_TCP_ADDR']
DB_PORT = 6379
DB_NO = 0
DB_NAMESPACE='catcher'


puts "redis url: redis://#{DB_URL}:#{DB_PORT}/#{DB_NO}"
Sidekiq.configure_client do |config|
  config.redis = { namespace:  DB_NAMESPACE, size: 1, url: "redis://#{DB_URL}:#{DB_PORT}/#{DB_NO}" }
end

Sidekiq.configure_server do |config|
  config.redis = { namespace: DB_NAMESPACE, url: "redis://#{DB_URL}:#{DB_PORT}/#{DB_NO}" }
end

puts "Done loading config"
