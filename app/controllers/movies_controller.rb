class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
  end

  def create
    @movie = Movie.new
  end

  def search
    title = params[:s]
    results = HTTParty.get("http://www.omdbapi.com/?s=#{title}")
    imdb_ids = results["Search"].map {|result| result["imdbID"]}
    @full_results = imdb_ids.map {|id| HTTParty.get("http://omdbapi.com/?i=#{id}&plot=full")}
  end
end