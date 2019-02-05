class Gossip < ApplicationRecord
	validates :title, length: { minimum: 3, maximum: 14 },presence: true#obligatoirement un title avec min 3 lettres et max 14
	validates :content, presence: true #obligatoirement un content
	belongs_to :user
	has_many :comments
	has_many :taggossips
	has_many :tags, through: :taggossips
	has_many :likes

end
