class ChangeReferencesEventsUsers < ActiveRecord::Migration[6.1]
  def self.up
    change_table :events do |t|
      t.belongs_to :admin, index: true
    end
  end
  def self.down
    change_table :events do |t|
      t.remove :user_id
    end
  end
end
