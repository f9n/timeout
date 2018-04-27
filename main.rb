require 'sinatra' 

get '/:time' do
  time_amount = params[:time].to_i
  puts "Sleeping #{time_amount} seconds"
  sleep time_amount
  "Just Do It" 
end
