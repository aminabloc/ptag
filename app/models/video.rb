class Video < ApplicationRecord
  belongs_to :user
  mount_uploader :attachment, VideosUploader
end
