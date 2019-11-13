class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.boolean :quality
      t.boolean :shareable
      t.string :attachment
      t.string :comment
      t.string :thumbnail
      t.references :user, index: true

      t.timestamps
    end
  end
end
