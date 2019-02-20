class TestimonialsController < ApplicationController
	before_action :find_testimonial, only: [:edit,:update,:destroy]
	before_action :authenticate_user!
	def new
		@testimonial = Testimonial.new
	end
	def create
		@testimonial = Testimonial.new testimonial_params

		if @testimonial.save
			redirect_to root_path, notice: "Testimonial Added Successfully"
		else
			render 'new', notice: "Oh no, zuber u silly man!"
		end
	end
	def edit
		
	end
	def update
		if @testimonial.update testimonial_params
			redirect_to admin_index_path
		else
			render 'edit'
		end
	end
	def destroy
		@testimonial.destroy
		redirect_to admin_index_path
		
	end

	private

	def testimonial_params
		params.require(:testimonial).permit(:name,:content)
		
	end
	def find_testimonial
		@testimonial = Testimonial.find(params[:id])
		
	end

end