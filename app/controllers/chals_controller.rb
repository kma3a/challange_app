class ChalsController < ApplicationController

	def index
		@chals = Chal.all

	end

	def create
		@chal = Chal.create!(creator_id: current_user.id ,name: chal_params[:name], description: chal_params[:description])
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
		@chal = Chal.find(params[:id])
	end

	def show
		@chal = Chal.find(params[:id])
	end

	def update
		@chal = Chal.find(params[:id])
		@chal.update!(name: chal_params[:name], description: chal_params[:description])
		if @chal.save
			redirect_to @chal
		else
			render 'edit'
		end
	end

	def destroy

	end

	private

	def chal_params
		params.require(:chal).permit(:name, :description)
	end


end