class ChalsController < ApplicationController

	def index

	end

	def create
		@chal = Chal.new(creator_id: current_user.id ,name: chal_params[:name], description: chal_params[:description])
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
		@chal = Chal.find(params[:id])
	end

	def update

	end

	def destroy

	end

	private

	def chal_params
		params.require(:chal).permit(:name, :description)
	end


end