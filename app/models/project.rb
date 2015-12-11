class Project < ActiveRecord::Base
	has_many :rewards
	has_many :comments
	has_many :pledges
	accepts_nested_attributes_for :rewards
	has_many :users, through: :reservations
	belongs_to :user
	belongs_to :category
	belongs_to :category
end
