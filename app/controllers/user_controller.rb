class UserController < ApplicationController
  before_action :user_signed_in?, only: [:hidden]

  def show

  end

end