class CreateKo16Winners < ActiveRecord::Migration
  def change
    create_table :ko16_winners do |t|
      t.string :a1_v_b2
      t.string :c1_v_d2
      t.string :e1_v_f2
      t.string :g1_v_h2
      t.string :b1_v_a2
      t.string :d1_v_c2
      t.string :f1_v_e2
      t.string :h1_v_g2
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
