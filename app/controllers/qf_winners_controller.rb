class QfWinnersController < ApplicationController
  before_action :set_qf_winner, only: [:show, :edit, :update, :destroy]

  # GET /qf_winners
  # GET /qf_winners.json
  def index
    @qf_winners = QfWinner.all
    @ko16_winners = Ko16Winner.all
    @teams = Team.all
    @group_stage_winners = GroupStageWinner.all
  end

  # GET /qf_winners/1
  # GET /qf_winners/1.json
  def show
    @teams = Team.all
    @group_stage_winners = GroupStageWinner.all
    @qf_winners = QfWinner.all
    @sf_winners = SfWinner.all
    @ko16_winners = Ko16Winner.all
    @final_winners = FinalWinner.all
    @users = User.all
  end

  # GET /qf_winners/new
  def new
    @qf_winner = QfWinner.new
    @ko16_winners = Ko16Winner.all
    @teams = Team.all
  end

  # GET /qf_winners/1/edit
  def edit
    @ko16_winners = Ko16Winner.all
    @teams = Team.all
  end

  # POST /qf_winners
  # POST /qf_winners.json
  def create
    @qf_winner = QfWinner.new(qf_winner_params)
    @qf_winner.user = current_user

    respond_to do |format|
      if @qf_winner.save
        format.html { redirect_to @qf_winner, notice: 'Qf winner was successfully created.' }
        format.json { render :show, status: :created, location: @qf_winner }
      else
        format.html { render :new }
        format.json { render json: @qf_winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qf_winners/1
  # PATCH/PUT /qf_winners/1.json
  def update
    respond_to do |format|
      if @qf_winner.update(qf_winner_params)
        format.html { redirect_to @qf_winner, notice: 'Qf winner was successfully updated.' }
        format.json { render :show, status: :ok, location: @qf_winner }
      else
        format.html { render :edit }
        format.json { render json: @qf_winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qf_winners/1
  # DELETE /qf_winners/1.json
  def destroy
    @qf_winner.destroy
    respond_to do |format|
      format.html { redirect_to qf_winners_url, notice: 'Qf winner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qf_winner
      @qf_winner = QfWinner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qf_winner_params
      params.permit(:qf1_w, :qf2_w, :qf3_w, :qf4_w, :user_id)
    end
end
