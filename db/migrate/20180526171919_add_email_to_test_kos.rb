class AddEmailToTestKos < ActiveRecord::Migration
  def change
    add_column :test_kos, :email, :references
  end
end
