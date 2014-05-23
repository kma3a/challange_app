class Test < ActiveRecord::Base
	belomgs_to :creator, class_name: "User"
	have_many :solutions
	have_many :users, through: :solutions
	have_many :votes, as: :voteable
	have_many :comments, as: :commentable
end
