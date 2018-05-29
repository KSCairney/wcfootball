class CreateFinalWinners < ActiveRecord::Migration
  def change
    create_table :final_winners do |t|
      t.string :champion
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
