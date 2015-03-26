require 'sinatra'
require 'pry'
require 'sinatra/reloader'

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

get '/:num' do
	first_list.lists[params[:num].to_i].complete!
	redirect to('/list')
end

get '/complete/:num' do
	first_list.delete(params[:num].to_i)
	redirect to('/list')
end
