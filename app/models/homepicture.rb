class Homepicture < ApplicationRecord
	validates :hometext1,:hometext2,:hometext3,:homeslider1,:homeslider2,:homeslider3,:about,:testimonial,:pricing,:contact,:contactlocation,:contactlocation1,:contactlocation2,:email,:number,:time,:time1,:city,:city1,:city2,:locnumber,:locnumber1,:locnumber2, presence: true

	has_one_attached :homeslider1, styles: {medium: "1920x1080#"}
	has_one_attached :homeslider2, styles: {medium: "1920x1080#"}
	has_one_attached :homeslider3, styles: {medium: "1920x1080#"}
	has_one_attached :about, styles: {medium: "1920x1080#"}
	has_one_attached :testimonial, styles: {medium: "1920x1080#"}
	has_one_attached :pricing, styles: {medium: "1920x1080#"}
	has_one_attached :contact, styles: {medium: "1920x1080#"}

end
