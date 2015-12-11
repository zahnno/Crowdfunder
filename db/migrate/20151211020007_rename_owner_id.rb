class RenameOwnerId < ActiveRecord::Migration
  def change
  	rename_column :projects, :owner_id, :user_id
  end
end
