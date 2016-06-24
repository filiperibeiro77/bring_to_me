class UserProxy

	def initialize(real_object)
		@real_object = real_object
	end

	def rate(qualification, traveler_id)
		@real_object.rate(qualification, traveler_id)
	end

end