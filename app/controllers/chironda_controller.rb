class ChirondaController < ApplicationController
	
	def index
		@home = Homepicture.first
		@treatment = Treatment.all
		@testimonial = Testimonial.all.limit(5)
	end

	

end

