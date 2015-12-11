class ChangeProjectIdToInteger < ActiveRecord::Migration
  def change
  	change_column :pledges, :project_id, :integer
  end
end
