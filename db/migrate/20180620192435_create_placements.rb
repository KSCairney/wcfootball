class CreatePlacements < ActiveRecord::Migration
  def change
    create_table :placements do |t|
      t.string :locale
      t.string :name

      t.timestamps null: false
    end
  end
end
