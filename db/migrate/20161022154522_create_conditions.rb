class CreateConditions < ActiveRecord::Migration[5.0]
  def change
   enable_extension 'hstore' unless extension_enabled?('hstore')
   create_table :conditions do |t|
      t.string :type
      t.hstore :data
      t.timestamps
    end
  end
end
