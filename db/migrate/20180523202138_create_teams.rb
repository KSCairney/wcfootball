class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :group_number
      t.string :flag

      t.timestamps null: false
    end
  end
end
