require 'test_helper'

class FinalWinnersControllerTest < ActionController::TestCase
  setup do
    @final_winner = final_winners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:final_winners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create final_winner" do
    assert_difference('FinalWinner.count') do
      post :create, final_winner: { champion: @final_winner.champion, user_id: @final_winner.user_id }
    end

    assert_redirected_to final_winner_path(assigns(:final_winner))
  end

  test "should show final_winner" do
    get :show, id: @final_winner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @final_winner
    assert_response :success
  end

  test "should update final_winner" do
    patch :update, id: @final_winner, final_winner: { champion: @final_winner.champion, user_id: @final_winner.user_id }
    assert_redirected_to final_winner_path(assigns(:final_winner))
  end

  test "should destroy final_winner" do
    assert_difference('FinalWinner.count', -1) do
      delete :destroy, id: @final_winner
    end

    assert_redirected_to final_winners_path
  end
end
