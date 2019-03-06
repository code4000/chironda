class Treatment < ApplicationRecord
	validates :speciality,:link,:price,:duration,:image, presence: true
	validates :content, presence: true, length: { minimum: 15}

	extend FriendlyId
	friendly_id :link, use: :slugged

	has_one_attached :image
	has_one_attached :image1
	has_one_attached :image2
	has_one_attached :image3
	has_one_attached :image4
	has_one_attached :image5
	has_one_attached :image6

end
