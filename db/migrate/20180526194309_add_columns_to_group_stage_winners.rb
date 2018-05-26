class AddColumnsToGroupStageWinners < ActiveRecord::Migration
  def change
    add_column :group_stage_winners, :groupb2, :string
    add_column :group_stage_winners, :groupb1_flag, :string
  end
end
