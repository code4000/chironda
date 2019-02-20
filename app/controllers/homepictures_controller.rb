class HomepicturesController < ApplicationController
	before_action :find_homepicture, only: [:edit,:update]
	before_action :authenticate_user!




	def edit
		
	end
	
	def update
		if @home.update homepicture_params
			redirect_to admin_index_path, notice: "Pictures updated successfully"
		else
			render 'edit'
		end
	end


	private

	def homepicture_params
		params.require(:homepicture).permit(:hometext1,:hometext2,:hometext3,:banner1,:banner2,:homeslider1,:homeslider2,:homeslider3,:about,:testimonial,:pricing,:contact,:contactlocation,:contactlocation1,:contactlocation2,:email,:number,:time,:time1,:city,:city1,:city2,:locnumber,:locnumber1,:locnumber2)
	end
	def find_homepicture
		@home = Homepicture.find(params[:id])
		
	end
end
