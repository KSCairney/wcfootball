require 'test_helper'

class Ko16WinnersControllerTest < ActionController::TestCase
  setup do
    @ko16_winner = ko16_winners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ko16_winners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ko16_winner" do
    assert_difference('Ko16Winner.count') do
      post :create, ko16_winner: { a1_v_b2: @ko16_winner.a1_v_b2, b1_v_a2: @ko16_winner.b1_v_a2, c1_v_d2: @ko16_winner.c1_v_d2, d1_v_c2: @ko16_winner.d1_v_c2, e1_v_f2: @ko16_winner.e1_v_f2, f1_v_e2: @ko16_winner.f1_v_e2, g1_v_h2: @ko16_winner.g1_v_h2, h1_v_g2: @ko16_winner.h1_v_g2, user_id: @ko16_winner.user_id }
    end

    assert_redirected_to ko16_winner_path(assigns(:ko16_winner))
  end

  test "should show ko16_winner" do
    get :show, id: @ko16_winner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ko16_winner
    assert_response :success
  end

  test "should update ko16_winner" do
    patch :update, id: @ko16_winner, ko16_winner: { a1_v_b2: @ko16_winner.a1_v_b2, b1_v_a2: @ko16_winner.b1_v_a2, c1_v_d2: @ko16_winner.c1_v_d2, d1_v_c2: @ko16_winner.d1_v_c2, e1_v_f2: @ko16_winner.e1_v_f2, f1_v_e2: @ko16_winner.f1_v_e2, g1_v_h2: @ko16_winner.g1_v_h2, h1_v_g2: @ko16_winner.h1_v_g2, user_id: @ko16_winner.user_id }
    assert_redirected_to ko16_winner_path(assigns(:ko16_winner))
  end

  test "should destroy ko16_winner" do
    assert_difference('Ko16Winner.count', -1) do
      delete :destroy, id: @ko16_winner
    end

    assert_redirected_to ko16_winners_path
  end
end
