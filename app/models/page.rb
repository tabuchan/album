class Page < ActiveRecord::Base
	#check if whether title object is exists or not
	validate_presense_of :title
		
	def validate
		
	end		
end
