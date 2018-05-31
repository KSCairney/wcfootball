class FinalWinnersController < ApplicationController
  before_action :set_final_winner, only: [:show, :edit, :update, :destroy]

  # GET /final_winners
  # GET /final_winners.json
  def index
    @final_winners = FinalWinner.all
    @sf_winners = SfWinner.all
    @qf_winners = QfWinner.all
    @ko16_winners = Ko16Winner.all
    @teams = Team.all
    @group_stage_winners = GroupStageWinner.all
  end

  # GET /final_winners/1
  # GET /final_winners/1.json
  def show
    @teams = Team.all
    @group_stage_winners = GroupStageWinner.all
    @qf_winners = QfWinner.all
    @sf_winners = SfWinner.all
    @ko16_winners = Ko16Winner.all
    @final_winners = FinalWinner.all
    @users = User.all
  end

  # GET /final_winners/new
  def new
    @final_winner = FinalWinner.new
    @teams = Team.all
    @sf_winners = SfWinner.all
  end

  # GET /final_winners/1/edit
  def edit
    @teams = Team.all
    @sf_winners = SfWinner.all
  end

  # POST /final_winners
  # POST /final_winners.json
  def create
    @final_winner = FinalWinner.new(final_winner_params)
    @final_winner.user = current_user

    respond_to do |format|
      if @final_winner.save
        format.html { redirect_to @final_winner, notice: 'Final winner was successfully created.' }
        format.json { render :show, status: :created, location: @final_winner }
      else
        format.html { render :new }
        format.json { render json: @final_winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /final_winners/1
  # PATCH/PUT /final_winners/1.json
  def update
    respond_to do |format|
      if @final_winner.update(final_winner_params)
        format.html { redirect_to @final_winner, notice: 'Final winner was successfully updated.' }
        format.json { render :show, status: :ok, location: @final_winner }
      else
        format.html { render :edit }
        format.json { render json: @final_winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /final_winners/1
  # DELETE /final_winners/1.json
  def destroy
    @final_winner.destroy
    respond_to do |format|
      format.html { redirect_to final_winners_url, notice: 'Final winner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_final_winner
      @final_winner = FinalWinner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def final_winner_params
      params.permit(:champion, :user_id)
    end
end
