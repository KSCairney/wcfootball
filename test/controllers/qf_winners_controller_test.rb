require 'test_helper'

class QfWinnersControllerTest < ActionController::TestCase
  setup do
    @qf_winner = qf_winners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qf_winners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qf_winner" do
    assert_difference('QfWinner.count') do
      post :create, qf_winner: { qf1_w: @qf_winner.qf1_w, qf2_w: @qf_winner.qf2_w, qf3_w: @qf_winner.qf3_w, qf4_w: @qf_winner.qf4_w, user_id: @qf_winner.user_id }
    end

    assert_redirected_to qf_winner_path(assigns(:qf_winner))
  end

  test "should show qf_winner" do
    get :show, id: @qf_winner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qf_winner
    assert_response :success
  end

  test "should update qf_winner" do
    patch :update, id: @qf_winner, qf_winner: { qf1_w: @qf_winner.qf1_w, qf2_w: @qf_winner.qf2_w, qf3_w: @qf_winner.qf3_w, qf4_w: @qf_winner.qf4_w, user_id: @qf_winner.user_id }
    assert_redirected_to qf_winner_path(assigns(:qf_winner))
  end

  test "should destroy qf_winner" do
    assert_difference('QfWinner.count', -1) do
      delete :destroy, id: @qf_winner
    end

    assert_redirected_to qf_winners_path
  end
end
