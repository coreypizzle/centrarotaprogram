class AddDaysappToUser < ActiveRecord::Migration
  def change
    add_column :users, :mondayap02, :string, :null => true
    add_column :users, :tuesdayap02, :string, :null => true
    add_column :users, :wednesdayap02, :string, :null => true
    add_column :users, :thursdayap02, :string, :null => true
    add_column :users, :fridayap02, :string, :null => true
    add_column :users, :saturdayap02, :string, :null => true
    add_column :users, :sundayap02, :string, :null => true
    add_column :users, :mondayap03, :string, :null => true
    add_column :users, :tuesdayap03, :string, :null => true
    add_column :users, :wednesdayap03, :string, :null => true
    add_column :users, :thursdayap03, :string, :null => true
    add_column :users, :fridayap03, :string, :null => true
    add_column :users, :saturdayap03, :string, :null => true
    add_column :users, :sundayap03, :string, :null => true
    add_column :users, :mondayap04, :string, :null => true
    add_column :users, :tuesdayap04, :string, :null => true
    add_column :users, :wednesdayap04, :string, :null => true
    add_column :users, :thursdayap04, :string, :null => true
    add_column :users, :fridayap04, :string, :null => true
    add_column :users, :saturdayap04, :string, :null => true
    add_column :users, :sundayap04, :string, :null => true
  end
end
