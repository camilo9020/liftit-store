# == Schema Information
#
# Table name: prizes
#
#  id           :integer          not null, primary key
#  name         :string
#  string       :string
#  description  :text
#  amount       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  condition_id :integer
#

require 'test_helper'

class PrizeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
