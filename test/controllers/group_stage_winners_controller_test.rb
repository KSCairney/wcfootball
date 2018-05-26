require 'test_helper'

class GroupStageWinnersControllerTest < ActionController::TestCase
  setup do
    @group_stage_winner = group_stage_winners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_stage_winners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_stage_winner" do
    assert_difference('GroupStageWinner.count') do
      post :create, group_stage_winner: { groupa1: @group_stage_winner.groupa1, groupa1_flag: @group_stage_winner.groupa1_flag, groupa2: @group_stage_winner.groupa2, groupa2_flag: @group_stage_winner.groupa2_flag, groupb1: @group_stage_winner.groupb1, groupb1: @group_stage_winner.groupb1, groupb2_flag: @group_stage_winner.groupb2_flag, groupb2_flag: @group_stage_winner.groupb2_flag, groupc1: @group_stage_winner.groupc1, groupc1_flag: @group_stage_winner.groupc1_flag, groupc2: @group_stage_winner.groupc2, groupc2_flag: @group_stage_winner.groupc2_flag, groupd1: @group_stage_winner.groupd1, groupd1_flag: @group_stage_winner.groupd1_flag, groupd2: @group_stage_winner.groupd2, groupd2_flag: @group_stage_winner.groupd2_flag, groupe1: @group_stage_winner.groupe1, groupe1_flag: @group_stage_winner.groupe1_flag, groupe2: @group_stage_winner.groupe2, groupe2_flag: @group_stage_winner.groupe2_flag, groupf1: @group_stage_winner.groupf1, groupf1_flag: @group_stage_winner.groupf1_flag, groupf2: @group_stage_winner.groupf2, groupf2_flag: @group_stage_winner.groupf2_flag, groupg1: @group_stage_winner.groupg1, groupg1_flag: @group_stage_winner.groupg1_flag, groupg2: @group_stage_winner.groupg2, groupg2_flag: @group_stage_winner.groupg2_flag, grouph1: @group_stage_winner.grouph1, grouph1_flag: @group_stage_winner.grouph1_flag, grouph2: @group_stage_winner.grouph2, grouph2_flag: @group_stage_winner.grouph2_flag, user: @group_stage_winner.user }
    end

    assert_redirected_to group_stage_winner_path(assigns(:group_stage_winner))
  end

  test "should show group_stage_winner" do
    get :show, id: @group_stage_winner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_stage_winner
    assert_response :success
  end

  test "should update group_stage_winner" do
    patch :update, id: @group_stage_winner, group_stage_winner: { groupa1: @group_stage_winner.groupa1, groupa1_flag: @group_stage_winner.groupa1_flag, groupa2: @group_stage_winner.groupa2, groupa2_flag: @group_stage_winner.groupa2_flag, groupb1: @group_stage_winner.groupb1, groupb1: @group_stage_winner.groupb1, groupb2_flag: @group_stage_winner.groupb2_flag, groupb2_flag: @group_stage_winner.groupb2_flag, groupc1: @group_stage_winner.groupc1, groupc1_flag: @group_stage_winner.groupc1_flag, groupc2: @group_stage_winner.groupc2, groupc2_flag: @group_stage_winner.groupc2_flag, groupd1: @group_stage_winner.groupd1, groupd1_flag: @group_stage_winner.groupd1_flag, groupd2: @group_stage_winner.groupd2, groupd2_flag: @group_stage_winner.groupd2_flag, groupe1: @group_stage_winner.groupe1, groupe1_flag: @group_stage_winner.groupe1_flag, groupe2: @group_stage_winner.groupe2, groupe2_flag: @group_stage_winner.groupe2_flag, groupf1: @group_stage_winner.groupf1, groupf1_flag: @group_stage_winner.groupf1_flag, groupf2: @group_stage_winner.groupf2, groupf2_flag: @group_stage_winner.groupf2_flag, groupg1: @group_stage_winner.groupg1, groupg1_flag: @group_stage_winner.groupg1_flag, groupg2: @group_stage_winner.groupg2, groupg2_flag: @group_stage_winner.groupg2_flag, grouph1: @group_stage_winner.grouph1, grouph1_flag: @group_stage_winner.grouph1_flag, grouph2: @group_stage_winner.grouph2, grouph2_flag: @group_stage_winner.grouph2_flag, user: @group_stage_winner.user }
    assert_redirected_to group_stage_winner_path(assigns(:group_stage_winner))
  end

  test "should destroy group_stage_winner" do
    assert_difference('GroupStageWinner.count', -1) do
      delete :destroy, id: @group_stage_winner
    end

    assert_redirected_to group_stage_winners_path
  end
end
