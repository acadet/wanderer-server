class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :place_id
      t.string :device_token
    end

    remove_column :places, :likes
  end
end
