class TestKosController < ApplicationController
  before_action :set_test_ko, only: [:show, :edit, :update, :destroy]

  # GET /test_kos
  # GET /test_kos.json
  def index
    @test_kos = TestKo.all
  end

  # GET /test_kos/1
  # GET /test_kos/1.json
  def show
  end

  # GET /test_kos/new
  def new
    @test_ko = TestKo.new
    @test_groups = TestGroup.all
    @teams = Team.all
  end

  # GET /test_kos/1/edit
  def edit
  end

  # POST /test_kos
  # POST /test_kos.json
  def create
    @test_ko = TestKo.new(test_ko_params)

    respond_to do |format|
      if @test_ko.save
        format.html { redirect_to @test_ko, notice: 'Test ko was successfully created.' }
        format.json { render :show, status: :created, location: @test_ko }
      else
        format.html { render :new }
        format.json { render json: @test_ko.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_kos/1
  # PATCH/PUT /test_kos/1.json
  def update
    respond_to do |format|
      if @test_ko.update(test_ko_params)
        format.html { redirect_to @test_ko, notice: 'Test ko was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_ko }
      else
        format.html { render :edit }
        format.json { render json: @test_ko.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_kos/1
  # DELETE /test_kos/1.json
  def destroy
    @test_ko.destroy
    respond_to do |format|
      format.html { redirect_to test_kos_url, notice: 'Test ko was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_ko
      @test_ko = TestKo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_ko_params
      params.require(:test_ko).permit(:name, :user_id, :team_id)
    end
end
