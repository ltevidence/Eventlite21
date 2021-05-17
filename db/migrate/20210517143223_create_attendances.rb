class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.string :stripe_customer_id
      t.belongs_to :user, foreign_key: true
      t.belongs_to :event, foreign_ley: true

      t.timestamps
    end
  end
end
