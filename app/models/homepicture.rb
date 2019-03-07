class Homepicture < ApplicationRecord
	validates :hometext1,:hometext2,:hometext3,:homeslider1,:homeslider2,:homeslider3,:about,:testimonial,:pricing,:contact,:contactlocation,:contactlocation1,:contactlocation2,:email,:number,:time,:time1,:city,:city1,:city2,:locnumber,:locnumber1,:locnumber2, presence: true

	has_attached_file :homeslider1, styles: {medium: "1920x1080#"}
	has_attached_file :homeslider2, styles: {medium: "1920x1080#"}
	has_attached_file :homeslider3, styles: {medium: "1920x1080#"}
	has_attached_file :about, styles: {medium: "1920x1080#"}
	has_attached_file :testimonial, styles: {medium: "1920x1080#"}
	has_attached_file :pricing, styles: {medium: "1920x1080#"}
	has_attached_file :contact, styles: {medium: "1920x1080#"}

end
