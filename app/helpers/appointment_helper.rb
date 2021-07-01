module AppointmentHelper
	def doc
		 Doctor.where("id = ?", @docs).select( "start_time")
	end
end
