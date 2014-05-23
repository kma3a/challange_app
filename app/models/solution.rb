class Solution < ActiveRecord::Base
	belongs_to :user
	belongs_to :chal
	has_many :votes, as: :votable
	has_many :comments, as: :commentable
end
