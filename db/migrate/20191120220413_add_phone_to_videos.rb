class AddPhoneToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :phone, :string
  end
end
