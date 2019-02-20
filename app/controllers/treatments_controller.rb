class TreatmentsController < ApplicationController
	before_action :find_post, only: [:show,:edit,:update,:destroy]
	before_action :authenticate_user!, except: [:show]

	def show
		@treatments = Treatment.all 
	end
	def new
		@treatment = Treatment.new
	end
	def create
		@treatment = Treatment.new treatment_params

		if @treatment.save

			redirect_to root_path, notice: "Treatment Added Successfully"
		else
			render 'new', notice: "Oh no, zuber u silly man!"
		end
	end
	def edit

	end
	def update
		if @treatment.update treatment_params
			redirect_to admin_index_path, notice: "Treatment Updated Successfully"
		else
			render 'edit', notice: "Oh no, zuber u silly man!"
		end
	end
	def destroy
		@treatment.destroy
		redirect_to admin_index_path

	end

	private

	def treatment_params
		params.require(:treatment).permit(:category,:speciality,:link,:content,:price,:duration,:image,:image1,:image2,:image3,:image4,:image5,:image6,:slug)

	end
	def find_post
		@treatment = Treatment.friendly.find(params[:id])

	end
end