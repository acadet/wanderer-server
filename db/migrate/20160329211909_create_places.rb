class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :country
      t.decimal :latitude
      t.decimal :longitude
      t.string :description
      t.integer :likes, default: 0
      t.date :visit_date
      t.integer :main_picture_id
    end

    add_index :places, :main_picture_id
  end
end
