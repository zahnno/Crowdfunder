class AddTotalAmountToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :total, :integer
  end
end
