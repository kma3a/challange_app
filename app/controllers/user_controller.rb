class UsersController < ApplicationController
  before_action :user_signed_in?, only: [:hidden]

end