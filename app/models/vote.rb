class Vote < ActiveRecord::Base
	belongs_to :votable, polymorphic: true
	belings_to :user_id
end
