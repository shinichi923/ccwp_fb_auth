class AddFbidToUser < ActiveRecord::Migration
  def change
  	add_column :users, :is_publisher, :boolean
  	add_column :users, :tree_info, :string
  end
end
