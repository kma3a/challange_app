class Solution < ActiveRecord::Base
	belongs_to :user
	belongs_to :test
	has_many :votes, as: :voteable
	has_many :comments, as: :commentable
end
