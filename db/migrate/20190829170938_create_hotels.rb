class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :qr_code
      t.string :location
      t.string :address
      t.string :subdomain

      t.timestamps
    end
  end
end
