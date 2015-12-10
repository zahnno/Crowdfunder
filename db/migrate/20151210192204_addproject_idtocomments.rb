class AddprojectIdtocomments < ActiveRecord::Migration
  def change
  	change_table :comments do |c|
  		c.rename :comment_id, :project_id
  	end
  end
end
