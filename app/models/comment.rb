class Comment < ActiveRecord::Base
	belongs_to :commentable, polymorphic: true
	belings_to :user
end
