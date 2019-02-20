class Testimonial < ApplicationRecord
	validates :name, presence: true
	validates :content, presence: true, length: { maximum: 250}
end
