# == Schema Information
#
# Table name: conditions
#
#  id         :integer          not null, primary key
#  type       :string
#  data       :hstore
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Condition < ApplicationRecord
end
