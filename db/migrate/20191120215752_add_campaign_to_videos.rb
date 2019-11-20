class AddCampaignToVideos < ActiveRecord::Migration[5.2]
  def change
    add_reference :videos, :campaign, index: true
  end
end
