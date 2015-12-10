class Project < ActiveRecord::Base
	has_many :rewards
	has_many :comments
	accepts_nested_attributes_for :rewards
	has_many :users, through: :reservations
	belongs_to :user
end
