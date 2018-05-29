class GroupStageWinnersController < ApplicationController
  before_action :set_group_stage_winner, only: [:show, :edit, :update, :destroy]

  # GET /group_stage_winners
  # GET /group_stage_winners.json
  def index
    @group_stage_winners = GroupStageWinner.all
    @teams = Team.all
  end

  # GET /group_stage_winners/1
  # GET /group_stage_winners/1.json
  def show
    @teams = Team.all
  end

  # GET /group_stage_winners/new
  def new
    @group_stage_winner = GroupStageWinner.new
    @teams = Team.all
  end

  # GET /group_stage_winners/1/edit
  def edit
    @teams = Team.all
  end

  # POST /group_stage_winners
  # POST /group_stage_winners.json
  def create
    @group_stage_winner = GroupStageWinner.new(group_stage_winner_params)
    @group_stage_winner.user = current_user

    respond_to do |format|
      if @group_stage_winner.save
        format.html { redirect_to @group_stage_winner, notice: 'Group stage winners have been selected.' }
        format.json { render :show, status: :created, location: @group_stage_winner }
      else
        format.html { render :new }
        format.json { render json: @group_stage_winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_stage_winners/1
  # PATCH/PUT /group_stage_winners/1.json
  def update
    respond_to do |format|
      if @group_stage_winner.update(group_stage_winner_params)
        format.html { redirect_to @group_stage_winner, notice: 'Group stage winner was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_stage_winner }
      else
        format.html { render :edit }
        format.json { render json: @group_stage_winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_stage_winners/1
  # DELETE /group_stage_winners/1.json
  def destroy
    @group_stage_winner.destroy
    respond_to do |format|
      format.html { redirect_to group_stage_winners_url, notice: 'Group stage winner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_stage_winner
      @group_stage_winner = GroupStageWinner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_stage_winner_params
      params.permit(:groupa1, :groupa2, :groupa1_flag, :groupa2_flag, :groupb1, :groupb2, :groupb1_flag, :groupb2_flag, :groupc1, :groupc2, :groupc1_flag, :groupc2_flag, :groupd1, :groupd2, :groupd1_flag, :groupd2_flag, :groupe1, :groupe2, :groupe1_flag, :groupe2_flag, :groupf1, :groupf2, :groupf1_flag, :groupf2_flag, :groupg1, :groupg2, :groupg1_flag, :groupg2_flag, :grouph1, :grouph2, :grouph1_flag, :grouph2_flag, :user)
    end
end
