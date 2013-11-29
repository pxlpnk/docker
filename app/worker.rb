require_relative 'config.rb'
require 'sidekiq'

class Worker
  include Sidekiq::Worker

  def perform(task = 'HardTask', cost = 2)
    puts "Working on #{task} for: #{cost}"
    sleep cost.to_i
  end
end
