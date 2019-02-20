class FaqsController < ApplicationController
	before_action :find_faq, only: [:edit,:update,:destroy]
	before_action :authenticate_user!, except: [:index]
	

	def index
		@faqs = Faq.all
	end
	
	def new
		@faq = Faq.new
	end
	def create
		@faq = Faq.new faq_params

		if @faq.save
			redirect_to admin_index_path, notice: "Faq Added Successfully"
		else
			render 'new', notice: "Oh no, zuber u silly man!"
		end
	end
	def edit
		
	end
	def update
		if @faq.update faq_params
			redirect_to faq_path
		else
			render 'edit'
		end
	end
	def destroy
		@faq.destroy
		redirect_to admin_index_path
		
	end

	private

	def faq_params
		params.require(:faq).permit(:title,:question,:answer)
		
	end
	def find_faq
		@faq = Faq.find(params[:id])
		
	end

end
