class AddIdToCategories < ActiveRecord::Migration
  def change
  		add column :categories, :id, :integer
  end
end
