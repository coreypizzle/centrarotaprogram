class AddOrderToUser < ActiveRecord::Migration
  def change
    add_column :users, :order, :integer, :default => 0
  end
end
