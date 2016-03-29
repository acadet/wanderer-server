class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :url
      t.integer :place_id
    end

    add_index :pictures, :place_id
  end
end
