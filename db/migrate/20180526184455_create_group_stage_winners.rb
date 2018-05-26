class CreateGroupStageWinners < ActiveRecord::Migration
  def change
    create_table :group_stage_winners do |t|
      t.string :groupa1
      t.string :groupa2
      t.string :groupa1_flag
      t.string :groupa2_flag
      t.string :groupb1
      t.string :groupb1
      t.string :groupb2_flag
      t.string :groupb2_flag
      t.string :groupc1
      t.string :groupc2
      t.string :groupc1_flag
      t.string :groupc2_flag
      t.string :groupd1
      t.string :groupd2
      t.string :groupd1_flag
      t.string :groupd2_flag
      t.string :groupe1
      t.string :groupe2
      t.string :groupe1_flag
      t.string :groupe2_flag
      t.string :groupf1
      t.string :groupf2
      t.string :groupf1_flag
      t.string :groupf2_flag
      t.string :groupg1
      t.string :groupg2
      t.string :groupg1_flag
      t.string :groupg2_flag
      t.string :grouph1
      t.string :grouph2
      t.string :grouph1_flag
      t.string :grouph2_flag
      t.references :user

      t.timestamps null: false
    end
  end
end
