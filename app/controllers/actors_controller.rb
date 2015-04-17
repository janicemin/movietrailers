class ActorsController < ApplicationController
	before_action :find_actor, only: [:show, :edit, :update, :destroy]
	def index
		@actors = Actor.all


	end
	def show

	end

	def edit 

	end

	def update

	end

	def new 

	end

	def create

	end

	def destroy

	end

	private

	def actor_params

	end

	def find_actor
		@actor = Actor.find(params[:id])
		
	end

end
