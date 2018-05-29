class SfWinnersController < ApplicationController
  before_action :set_sf_winner, only: [:show, :edit, :update, :destroy]

  # GET /sf_winners
  # GET /sf_winners.json
  def index
    @sf_winners = SfWinner.all
    @qf_winners = QfWinner.all
    @ko16_winners = Ko16Winner.all
    @teams = Team.all
    @group_stage_winners = GroupStageWinner.all
  end

  # GET /sf_winners/1
  # GET /sf_winners/1.json
  def show
    @sf_winners = SfWinner.all
    @qf_winners = QfWinner.all
    @ko16_winners = Ko16Winner.all
    @teams = Team.all
    @group_stage_winners = GroupStageWinner.all
  end

  # GET /sf_winners/new
  def new
    @sf_winner = SfWinner.new
    @teams = Team.all
    @qf_winners = QfWinner.all
  end

  # GET /sf_winners/1/edit
  def edit
    @teams = Team.all
    @qf_winners = QfWinner.all
  end

  # POST /sf_winners
  # POST /sf_winners.json
  def create
    @sf_winner = SfWinner.new(sf_winner_params)
    @sf_winner.user = current_user

    respond_to do |format|
      if @sf_winner.save
        format.html { redirect_to @sf_winner, notice: 'Sf winner was successfully created.' }
        format.json { render :show, status: :created, location: @sf_winner }
      else
        format.html { render :new }
        format.json { render json: @sf_winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sf_winners/1
  # PATCH/PUT /sf_winners/1.json
  def update
    respond_to do |format|
      if @sf_winner.update(sf_winner_params)
        format.html { redirect_to @sf_winner, notice: 'Sf winner was successfully updated.' }
        format.json { render :show, status: :ok, location: @sf_winner }
      else
        format.html { render :edit }
        format.json { render json: @sf_winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sf_winners/1
  # DELETE /sf_winners/1.json
  def destroy
    @sf_winner.destroy
    respond_to do |format|
      format.html { redirect_to sf_winners_url, notice: 'Sf winner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sf_winner
      @sf_winner = SfWinner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sf_winner_params
      params.permit(:sf1_w, :sf2_w, :user_id)
    end
end
