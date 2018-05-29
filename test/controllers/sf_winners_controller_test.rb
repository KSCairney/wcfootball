require 'test_helper'

class SfWinnersControllerTest < ActionController::TestCase
  setup do
    @sf_winner = sf_winners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sf_winners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sf_winner" do
    assert_difference('SfWinner.count') do
      post :create, sf_winner: { sf1_w: @sf_winner.sf1_w, sf2_w: @sf_winner.sf2_w, user_id: @sf_winner.user_id }
    end

    assert_redirected_to sf_winner_path(assigns(:sf_winner))
  end

  test "should show sf_winner" do
    get :show, id: @sf_winner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sf_winner
    assert_response :success
  end

  test "should update sf_winner" do
    patch :update, id: @sf_winner, sf_winner: { sf1_w: @sf_winner.sf1_w, sf2_w: @sf_winner.sf2_w, user_id: @sf_winner.user_id }
    assert_redirected_to sf_winner_path(assigns(:sf_winner))
  end

  test "should destroy sf_winner" do
    assert_difference('SfWinner.count', -1) do
      delete :destroy, id: @sf_winner
    end

    assert_redirected_to sf_winners_path
  end
end
