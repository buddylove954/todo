class Task
	attr_reader :string
	def initialize(string)
		@string = string
	end

	def time
		Time.now
	end
end