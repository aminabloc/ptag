class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.boolean :public
      t.string :url
      t.references :user, index: true

      t.timestamps
    end
  end
end
