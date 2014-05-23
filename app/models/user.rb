class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  has_many :tests
  has_many :solutions
  has_many :solved_tests, through: :solutions, source: :tests
  has_many :votes
  has_many :comments


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable
end
