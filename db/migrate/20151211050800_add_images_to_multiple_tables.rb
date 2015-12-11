class AddImagesToMultipleTables < ActiveRecord::Migration
  def change
  	add_column :projects, :image, :string
  	add_column :rewards, :image, :string
  	add_column :categories, :image, :string
  	add_column :users, :image, :string
  end
end
