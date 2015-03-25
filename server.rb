require 'sinatra'
require 'pry'
require_relative 'lib/todo_list'

get '/' do 
	erb :task
end

first_list = TodoList.new

post '/' do
  "You said #{params[:message]}"
  first_list.add(params[:message])
  redirect to('/list')
end

get '/list' do 
	@print_list = first_list.lists
	erb :list
end