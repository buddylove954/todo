class Task
	attr_reader :text
	def initialize(text)
		@text = text
	end

	def time
		name = Time.now
	end

end