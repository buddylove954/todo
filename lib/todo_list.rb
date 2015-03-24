require_relative 'task'
 
class TodoList
	def initialize
		@lists = []
	end

  def add(task)
    # task has #text and #time methods"
 	@list << task 
    puts task.text, task.time
  end
end


first_list = TodoList.new

task = Task.new("hey there")

task.string