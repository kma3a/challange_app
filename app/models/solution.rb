class Solution < ActiveRecord::Base
	belongs_to :user
	belongs_to :test
	have_many :votes, as: :voteable
	have_many :comments, as: :commentable
end
