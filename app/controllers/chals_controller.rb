class ChalsController < ApplicationController

	def index

	end

	def create
		@chal = Chal.new(creator_id: current_user.id ,name: params[:name], description: params[:description])
		if @chal
			redirect_to @chal
		else
			render 'new'
		end
	end

	def new
		@chal = Chal.new
	end

	def edit

	end

	def show

	end

	def update

	end

	def destroy

	end


end