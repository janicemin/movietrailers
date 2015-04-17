class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.date :year, null: false
      t.string :poster_url
      t.text :plot, null: false

      t.timestamps null: false
    end
  end
end
