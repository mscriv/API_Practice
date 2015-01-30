# == Schema Information
#
# Table name: movies
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  poster     :string(255)
#  agent_id   :integer
#  year       :string(255)
#  runtime    :string(255)
#  synopsis   :string(255)
#

class Movie < ActiveRecord::Base
  mount_uploader :poster, PosterUploader
  belongs_to :agent
end
