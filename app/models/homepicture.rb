class Homepicture < ApplicationRecord
	validates :hometext1,:hometext2,:hometext3,:homeslider1,:homeslider2,:homeslider3,:about,:testimonial,:pricing,:contact,:contactlocation,:contactlocation1,:contactlocation2,:email,:number,:time,:time1,:city,:city1,:city2,:locnumber,:locnumber1,:locnumber2, presence: true

	has_one_attached :homeslider1
	has_one_attached :homeslider2
	has_one_attached :homeslider3
	has_one_attached :about
	has_one_attached :testimonial
	has_one_attached :pricing
	has_one_attached :contact

end
