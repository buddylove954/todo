require_relative 'task'
 
class TodoList
	attr_reader :lists
	def initialize
		@lists = []
	end

  def add(task)
  	my_task = Task.new(task)
  	if my_task.text == "urgent"
  		@lists.unshift(my_task)
  	else
 	@lists << my_task
 end
end

  def delete(list_item)
  	@lists.delete_at(list_item)
  end

end




