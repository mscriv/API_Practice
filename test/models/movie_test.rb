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

require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
