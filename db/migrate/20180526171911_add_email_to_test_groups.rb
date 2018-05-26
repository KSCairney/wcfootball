class AddEmailToTestGroups < ActiveRecord::Migration
  def change
    add_column :test_groups, :email, :reference
  end
end
