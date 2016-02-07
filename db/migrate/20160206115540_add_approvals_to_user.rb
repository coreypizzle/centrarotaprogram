class AddApprovalsToUser < ActiveRecord::Migration
  def change
    add_column :users, :sundayap, :string, :null => true
    add_column :users, :mondayap, :string, :null => true
    add_column :users, :tuesdayap, :string, :null => true
    add_column :users, :wednesdayap, :string, :null => true
    add_column :users, :thursdayap, :string, :null => true
    add_column :users, :fridayap, :string, :null => true
    add_column :users, :saturdayap, :string, :null => true
  end
end
