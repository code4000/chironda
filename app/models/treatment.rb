class Treatment < ApplicationRecord
	include Paperclip::Glue
	validates :speciality,:link,:price,:duration,:image, presence: true
	validates :content, presence: true, length: { minimum: 15}

	extend FriendlyId
	friendly_id :link, use: :slugged

	has_attached_file :image, styles: {medium: "800x600#"}
	has_attached_file :image1, styles: {medium: "800x600#"}
	has_attached_file :image2, styles: {medium: "800x600#"}
	has_attached_file :image3, styles: {medium: "800x600#"}
	has_attached_file :image4, styles: {medium: "800x600#"}
	has_attached_file :image5, styles: {medium: "800x600#"}
	has_attached_file :image6, styles: {medium: "800x600#"}

	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates_attachment_content_type :image1, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates_attachment_content_type :image2, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates_attachment_content_type :image3, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates_attachment_content_type :image4, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates_attachment_content_type :image5, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates_attachment_content_type :image6, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
