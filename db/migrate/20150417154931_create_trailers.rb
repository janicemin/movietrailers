class CreateTrailers < ActiveRecord::Migration
  def change
    create_table :trailers do |t|
      t.string :title
      t.string :embed_url, null: false

      t.timestamps null: false
    end
  end
end
