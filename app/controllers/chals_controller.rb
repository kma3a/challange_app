class ChalsController < ApplicationController

	def index

	end

	def create
		p params
		@chal = Chal.create!(name:params)

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