class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  have_many :tests
  have_many :solutions
  have_many :solved_tests, through: :solutions, source: :tests
  have_many :votes
  have_many :comments


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable
end
