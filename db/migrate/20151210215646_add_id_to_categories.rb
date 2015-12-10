class AddIdToCategories < ActiveRecord::Migration
  def change
  		add_column :categories, :category_id, :integer
  end
end
