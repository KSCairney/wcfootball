class AddEmailToTestKos < ActiveRecord::Migration
  def change
    add_column :test_kos, :email, :reference
  end
end
