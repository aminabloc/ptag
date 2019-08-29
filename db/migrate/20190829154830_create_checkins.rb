class CreateCheckins < ActiveRecord::Migration[5.2]
  def change
    create_table :checkins do |t|
      t.string :phone
      t.integer :hotel_id
      t.string :name

      t.timestamps
    end
    add_index :checkins, :hotel_id
  end
end
