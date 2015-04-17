class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])  
  end

  def new
  end

  def create
    @movie = Movie.create(title: params[:movie][:title], year: params[:movie][:year], poster_url: params[:movie][:poster_url], plot: params[:movie][:plot])
    actors = params[:movie][:actors]
    actor_names = actors.split(', ')
    actor_names.each do |actor_name|
      if !Actor.find_by(name: actor_name)
        @movie.actors.create(name: actor_name)
      else
        actor = Actor.find_by(name: actor_name)
        actor.movies << @movie
      end
    end
    redirect_to @movie
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    
  end

  def search
    @movie = Movie.new
    title = params[:s]
    short_results = HTTParty.get("http://www.omdbapi.com/?s=#{title}")
    imdb_ids = short_results["Search"].map {|result| result["imdbID"]}
    @results = imdb_ids.map {|id| HTTParty.get("http://omdbapi.com/?i=#{id}&plot=full")}
    render :results
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :year, :poster_url, :plot)
  end

end