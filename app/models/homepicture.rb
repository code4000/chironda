class Homepicture < ApplicationRecord


	has_attached_file :homeslider1, styles: {medium: "1920x1080#"}
	has_attached_file :homeslider2, styles: {medium: "1920x1080#"}
	has_attached_file :homeslider3, styles: {medium: "1920x1080#"}
	has_attached_file :about, styles: {medium: "1920x1080#"}
	has_attached_file :testimonial, styles: {medium: "1920x1080#"}
	has_attached_file :pricing, styles: {medium: "1920x1080#"}
	has_attached_file :contact, styles: {medium: "1920x1080#"}

	validates_attachment_content_type :homeslider1, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates_attachment_content_type :homeslider2, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates_attachment_content_type :homeslider3, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates_attachment_content_type :about, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates_attachment_content_type :testimonial, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates_attachment_content_type :pricing, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates_attachment_content_type :contact, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
