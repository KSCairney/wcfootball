class AddPointsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :points, :integer, :defualt => 0
  end
end
