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
    @movie = Movie.new
  end

  def search
    title = params[:s]
    short_results = HTTParty.get("http://www.omdbapi.com/?s=#{title}")
    imdb_ids = results["Search"].map {|result| result["imdbID"]}
    @results = imdb_ids.map {|id| HTTParty.get("http://omdbapi.com/?i=#{id}&plot=full")}
    render :results
  end
end