class RemoveAdminIdFromEvents < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :admin_id, :bigint
  end
end
