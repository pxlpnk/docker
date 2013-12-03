require './config.rb'

require 'sidekiq'

require 'sidekiq/web'
run Sidekiq::Web
