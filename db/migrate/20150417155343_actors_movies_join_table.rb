class ActorsMoviesJoinTable < ActiveRecord::Migration
  def change
    create_join_table :actors, :movies
  end
end
