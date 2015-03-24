require 'sinatra'
require_relative 'lib/todo_list'


get '/' do 
	erb :task
end

post '/' do
  "You said '#{params[:message]}'"
end