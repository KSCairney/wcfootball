class CreateQfWinners < ActiveRecord::Migration
  def change
    create_table :qf_winners do |t|
      t.string :qf1_w
      t.string :qf2_w
      t.string :qf3_w
      t.string :qf4_w
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
