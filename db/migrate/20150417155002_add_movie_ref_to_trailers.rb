class AddMovieRefToTrailers < ActiveRecord::Migration
  def change
    add_reference :trailers, :movie, index: true, foreign_key: true
  end
end
