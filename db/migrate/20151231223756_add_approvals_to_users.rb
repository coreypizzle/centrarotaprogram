class AddApprovalsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mondayapp, :string, :null => true
    add_column :users, :tuesdayapp, :string, :null => true
    add_column :users, :wednesdayapp, :string, :null => true
    add_column :users, :thursdayapp, :string, :null => true
    add_column :users, :fridayapp, :string, :null => true
    add_column :users, :saturdayapp, :string, :null => true
    add_column :users, :sundayapp, :string, :null => true
  end
end
