class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name, null: false
      t.string :photo_url

      t.timestamps null: false
    end
    add_index :actors, :name
  end
end
