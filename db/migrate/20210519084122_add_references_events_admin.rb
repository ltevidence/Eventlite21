class AddReferencesEventsAdmin < ActiveRecord::Migration[6.1]
  def self.up 
    change_table :events do |t|
    t.references :admin
    end 
  end
end
