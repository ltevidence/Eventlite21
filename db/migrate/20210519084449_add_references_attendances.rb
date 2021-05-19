class AddReferencesAttendances < ActiveRecord::Migration[6.1]
  def self.up
    change_table :attendances do |t|
      t.references :guest
    end
  end
end
