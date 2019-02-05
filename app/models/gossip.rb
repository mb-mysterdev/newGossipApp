class Gossip < ApplicationRecord
	validates :title, length: { minimum: 3 ,maximum: 14 },presence: true
	validates :content, presence: true 
	belongs_to :user
	has_many :comments
	has_many :taggossips
	has_many :tags, through: :taggossips
	has_many :likes

end


