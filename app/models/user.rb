class User < ActiveRecord::Base
	has_secure_password
	has_many :projects
	has_many :pledges
	has many :pledges_projects, through: :pledges, source: :projects
end
