class AddDetailsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :hometown, :string
    add_column :users, :location, :string
    add_column :users, :videos, :string
    add_column :users, :posts, :string
    add_column :users, :gender, :string
  end
end
