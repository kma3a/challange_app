class Test < ActiveRecord::Base
	belongs_to :creator, class_name: "User"
	has_many :solutions
	has_many :users, through: :solutions
	has_many :votes, as: :voteable
	has_many :comments, as: :commentable
end
