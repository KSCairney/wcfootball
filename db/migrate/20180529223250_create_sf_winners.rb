class CreateSfWinners < ActiveRecord::Migration
  def change
    create_table :sf_winners do |t|
      t.string :sf1_w
      t.string :sf2_w
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
