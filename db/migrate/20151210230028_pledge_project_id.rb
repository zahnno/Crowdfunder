class PledgeProjectId < ActiveRecord::Migration
  def change
  	add_column :pledges, :project_id, :string
  end
end
