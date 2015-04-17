class TrailersController < ApplicationController

	before_action :find_movie, only: [:new, :create, :edit, :update, :destroy]
 
  def new
 		@trailer = Trailer.new
  end

  def create
    @trailer = @movie.trailers.new( trailer_params )
    	if @trailer.save
    		redirect_to @movie
    	else
    		render :new
    	end
   end

  def edit
  end

  def update
  	@trailer = @movie.trailers.find( params[:id])
		if @trailer.update(actor_params)
			redirect_to @movie
		else
			render :edit
		end
  end

  def destroy
  	@trailer = @movie.trailers.find( params[:id])
  	@trailer.destroy
  	redirect_to movie_path(@movie)
  end

  private 
  def trailer_params
  	params.require(:trailer).permit(:title, :embed_url)
  end
  def find_movie
		@movie = Movie.find(params[:movie_id])
  end
end


