class SimplePagesController < ApplicationController
  def index
    @teams = Team.all
    @group_stage_winners = GroupStageWinner.all
    @qf_winners = QfWinner.all
    @sf_winners = SfWinner.all
    @ko16_winners = Ko16Winner.all
    @final_winners = FinalWinner.all
    @users = User.all
    @placements = Placement.all
  end
  
  def ko_stage
    @teams = Team.all
    @group_stage_winners = GroupStageWinner.all
    @qf_winners = QfWinner.all
    @sf_winners = SfWinner.all
    @ko16_winners = Ko16Winner.all
    @final_winners = FinalWinner.all
    @users = User.all
  end
  
  def results
    @teams = Team.all
    @group_stage_winners = GroupStageWinner.all
    @qf_winners = QfWinner.all
    @sf_winners = SfWinner.all
    @ko16_winners = Ko16Winner.all
    @final_winners = FinalWinner.all
    @users = User.all
  end
  
  def group_stage
    @teams = Team.all
    @picks = Pick.all

  end
  
  def scores
    @teams = Team.all
    @group_stage_winners = GroupStageWinner.all
    @qf_winners = QfWinner.all
    @sf_winners = SfWinner.all
    @ko16_winners = Ko16Winner.all
    @final_winners = FinalWinner.all
    @users = User.all
    @placements = Placement.all
  end
  
end
