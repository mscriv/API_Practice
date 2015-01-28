class Movie < ActiveRecord::Base
  mount_uploader :poster, PosterUploader
  belongs_to :agent
end
