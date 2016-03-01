class AddNamesToEvent < ActiveRecord::Migration
  def change
    add_column :events, :name02, :string
    add_column :events, :name03, :string
    add_column :events, :name04, :string
  end
end
