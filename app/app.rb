require_relative 'config.rb'
require_relative 'worker'

require 'sinatra'

get '/:task/:cost' do |task, cost|
  Worker.perform_async(task, cost)
end
