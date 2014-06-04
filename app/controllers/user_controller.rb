class UserController < ApplicationController
  before_action :user_signed_in?, only: [:hidden]

  def show
  	@user = User.find(params[:id])
  	p params[:id]
  end

end