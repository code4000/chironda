class Treatment < ApplicationRecord
	validates :speciality,:link,:price,:duration,:image, presence: true
	validates :content, presence: true, length: { minimum: 15}

	extend FriendlyId
	friendly_id :link, use: :slugged

	has_one_attached :image, styles: {medium: "800x600#"}
	has_one_attached :image1, styles: {medium: "800x600#"}
	has_one_attached :image2, styles: {medium: "800x600#"}
	has_one_attached :image3, styles: {medium: "800x600#"}
	has_one_attached :image4, styles: {medium: "800x600#"}
	has_one_attached :image5, styles: {medium: "800x600#"}
	has_one_attached :image6, styles: {medium: "800x600#"}

end
