# == Schema Information
#
# Table name: agents
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Agent < ActiveRecord::Base
  has_many :movies
end
