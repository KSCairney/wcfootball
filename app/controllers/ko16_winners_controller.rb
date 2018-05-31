class Ko16WinnersController < ApplicationController
  before_action :set_ko16_winner, only: [:show, :edit, :update, :destroy]

  # GET /ko16_winners
  # GET /ko16_winners.json
  def index
    @ko16_winners = Ko16Winner.all
    @teams = Team.all
    @group_stage_winners = GroupStageWinner.all
  end

  # GET /ko16_winners/1
  # GET /ko16_winners/1.json
  def show
    @teams = Team.all
    @group_stage_winners = GroupStageWinner.all
    @qf_winners = QfWinner.all
    @sf_winners = SfWinner.all
    @ko16_winners = Ko16Winner.all
    @final_winners = FinalWinner.all
    @users = User.all
  end

  # GET /ko16_winners/new
  def new
    @ko16_winner = Ko16Winner.new
    @teams = Team.all
    @group_stage_winners = GroupStageWinner.all
  end

  # GET /ko16_winners/1/edit
  def edit
    @teams = Team.all
    @group_stage_winners = GroupStageWinner.all
  end

  # POST /ko16_winners
  # POST /ko16_winners.json
  def create
    @ko16_winner = Ko16Winner.new(ko16_winner_params)
    @ko16_winner.user = current_user

    respond_to do |format|
      if @ko16_winner.save
        format.html { redirect_to @ko16_winner, notice: 'Ko16 winner was successfully created.' }
        format.json { render :show, status: :created, location: @ko16_winner }
      else
        format.html { render :new }
        format.json { render json: @ko16_winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ko16_winners/1
  # PATCH/PUT /ko16_winners/1.json
  def update
    respond_to do |format|
      if @ko16_winner.update(ko16_winner_params)
        format.html { redirect_to @ko16_winner, notice: 'Ko16 winner was successfully updated.' }
        format.json { render :show, status: :ok, location: @ko16_winner }
      else
        format.html { render :edit }
        format.json { render json: @ko16_winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ko16_winners/1
  # DELETE /ko16_winners/1.json
  def destroy
    @ko16_winner.destroy
    respond_to do |format|
      format.html { redirect_to ko16_winners_url, notice: 'Ko16 winner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ko16_winner
      @ko16_winner = Ko16Winner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ko16_winner_params
      params.permit(:a1_v_b2, :c1_v_d2, :e1_v_f2, :g1_v_h2, :b1_v_a2, :d1_v_c2, :f1_v_e2, :h1_v_g2, :user_id)
    end
end
