require_relative 'task'
 
class TodoList
	attr_reader :lists
	def initialize
		@lists = []
	end

  def add(task)
  	task = Task.new(task)
 	@lists << task
    puts task.text, task.time
  end
end




