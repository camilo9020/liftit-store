# == Schema Information
#
# Table name: prizes
#
#  id          :integer          not null, primary key
#  name        :string
#  string      :string
#  description :text
#  amount      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Prize < ApplicationRecord
  validates :name, :description, :amount, presence: true
end
