require 'sinatra' 
require 'json'

get '/' do
  # Random time
  time_amount = rand(1..10)
  puts "Sleeping #{time_amount} seconds"
  sleep time_amount
  "Random Time"
end

get '/text/:time' do
  time_amount = params[:time].to_i
  puts "Sleeping #{time_amount} seconds"
  sleep time_amount
  "Just Do It"	# Return text
end


get '/json/:time' do
  time_amount = params[:time].to_i
  puts "Sleeping #{time_amount} seconds"
  sleep time_amount
  content_type :json
  { foo: "Bar" }.to_json # Return json
end
