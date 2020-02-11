class CreateDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :device_id
      t.string :user_id
      t.string :platform_name
      t.string :platform_id

      t.timestamps
    end
    add_index :devices, :user_id
  end
end
