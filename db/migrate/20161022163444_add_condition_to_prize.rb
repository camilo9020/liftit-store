class AddConditionToPrize < ActiveRecord::Migration[5.0]
  def change
    add_reference :prizes, :condition, foreign_key: true
  end
end
