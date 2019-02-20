class AdminController < ApplicationController

	before_action :authenticate_user!


	def index
		@homes = Homepicture.all
		@home = Homepicture.first
		@treatment = Treatment.all
		@testimonial = Testimonial.all
		@faqs = Faq.all
	end
end
