class Task
	attr_reader :text
	def initialize(text)
		@text = text
		@complete = false
	end

	def time
		name = Time.now
	end

	def completed?
		return @complete	
	end

	def complete!
		@complete = true
	end

end