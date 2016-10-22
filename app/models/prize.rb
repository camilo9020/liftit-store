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


class Prize < ApplicationRecord
  belongs_to :condition
  validates :name, :description, :amount, presence: true
end
