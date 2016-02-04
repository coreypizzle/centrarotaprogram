class AddMondayToUsers < ActiveRecord::Migration
  def change
    add_column :users, :monday, :string, :null => true
    add_column :users, :tuesday, :string, :null => true
    add_column :users, :wednesday, :string, :null => true
    add_column :users, :thursday, :string, :null => true
    add_column :users, :friday, :string, :null => true
    add_column :users, :saturday, :string, :null => true
    add_column :users, :sunday, :string, :null => true
  end
end
