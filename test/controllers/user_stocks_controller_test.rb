require 'test_helper'

class UserStocksControllerTest < ActionController::TestCase
  setup do
    @user_stock = user_stocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_stocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_stock" do
    assert_difference('UserStock.count') do
      post :create, use