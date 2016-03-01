class AddDaysToUser < ActiveRecord::Migration
  def change
    add_column :users, :monday02, :string, :null => true
    add_column :users, :tuesday02, :string, :null => true
    add_column :users, :wednesday02, :string, :null => true
    add_column :users, :thursday02, :string, :null => true
    add_column :users, :friday02, :string, :null => true
    add_column :users, :saturday02, :string, :null => true
    add_column :users, :sunday02, :string, :null => true
    add_column :users, :monday03, :string, :null => true
    add_column :users, :tuesday03, :string, :null => true
    add_column :users, :wednesday03, :string, :null => true
    add_column :users, :thursday03, :string, :null => true
    add_column :users, :friday03, :string, :null => true
    add_column :users, :saturday03, :string, :null => true
    add_column :users, :sunday03, :string, :null => true
    add_column :users, :monday04, :string, :null => true
    add_column :users, :tuesday04, :string, :null => true
    add_column :users, :wednesday04, :string, :null => true
    add_column :users, :thursday04, :string, :null => true
    add_column :users, :friday04, :string, :null => true
    add_column :users, :saturday04, :string, :null => true
    add_column :users, :sunday04, :string, :null => true
  end
end
