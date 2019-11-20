class CreatePageviews < ActiveRecord::Migration[5.2]
  def change
    create_table :pageviews do |t|
      t.integer :user_id
      t.text :referer
      t.integer :session
      t.string :ip_address
      t.string :user_agent

      t.timestamps
    end
    add_index :pageviews, :user_id
  end
end
