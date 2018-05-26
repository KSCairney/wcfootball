require 'test_helper'

class TestKosControllerTest < ActionController::TestCase
  setup do
    @test_ko = test_kos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_kos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_ko" do
    assert_difference('TestKo.count') do
      post :create, test_ko: { name: @test_ko.name, team_id: @test_ko.team_id, user_id: @test_ko.user_id }
    end

    assert_redirected_to test_ko_path(assigns(:test_ko))
  end

  test "should show test_ko" do
    get :show, id: @test_ko
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_ko
    assert_response :success
  end

  test "should update test_ko" do
    patch :update, id: @test_ko, test_ko: { name: @test_ko.name, team_id: @test_ko.team_id, user_id: @test_ko.user_id }
    assert_redirected_to test_ko_path(assigns(:test_ko))
  end

  test "should destroy test_ko" do
    assert_difference('TestKo.count', -1) do
      delete :destroy, id: @test_ko
    end

    assert_redirected_to test_kos_path
  end
end
