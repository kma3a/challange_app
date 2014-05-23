class Chal < ActiveRecord::Base
	belongs_to :creator, class_name: "User"
	has_many :solutions
	has_many :users, through: :solutions
	has_many :votes, as: :votable
	has_many :comments, as: :commentable
end
