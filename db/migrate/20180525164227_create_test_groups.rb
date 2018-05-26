class CreateTestGroups < ActiveRecord::Migration
  def change
    create_table :test_groups do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
