class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  has_many :chals, foreign_key: "creator_id"
  has_many :solutions
  has_many :solved_tests, through: :solutions, class_name: "Test"
  has_many :votes
  has_many :comments, foreign_key: "author_id"


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable
end
