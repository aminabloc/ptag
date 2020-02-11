class AddCampaignsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :campaign_id, :integer
  end
end
