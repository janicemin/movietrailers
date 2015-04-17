class ActorsController < ApplicationController
	before_action :find_actor, only: [:show, :edit, :update, :destroy]
	def index
		@actors = Actor.all


	end
	def show
		@movies = @actor.movies

	end

	def edit 

	end

	def update

		if @actor.update(actor_params)
			redirect_to @actor
		else
			render :new
		end
	end

	def new 

	end

	def create

	end

	def destroy
		@actor.destroy
		redirect_to actors_path
	end

	private

	def actor_params
		params.require(:actor).permit(:name, :photo_url)
	end
	def find_actor
		@actor = Actor.find(params[:id])
		
	end

end
