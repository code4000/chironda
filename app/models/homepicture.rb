class Homepicture < ApplicationRecord


	has_attached_file :homeslider1, styles: {medium: "1920x1080#"}
	has_attached_file :homeslider2, styles: {medium: "1920x1080#"}
	has_attached_file :homeslider3, styles: {medium: "1920x1080#"}
	has_attached_file :about, styles: {medium: "1920x1080#"}
	has_attached_file :testimonial, styles: {medium: "1920x1080#"}
	has_attached_file :pricing, styles: {medium: "1920x1080#"}
	has_attached_file :contact, styles: {medium: "1920x1080#"}

end
