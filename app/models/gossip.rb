class Gossip < ApplicationRecord
	validates :title,
	validates :content, presence: true #obligatoirement un content
	belongs_to :user
	has_many :comments
	has_many :taggossips
	has_many :tags, through: :taggossips
	has_many :likes

end
