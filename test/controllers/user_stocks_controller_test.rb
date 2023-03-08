require 'test_helper'

class UserStocksControllerTest < ActionController::TestCase
  setup do
    @user_stock = user_stocks(:one)
  end

  test "should get index" do
    get :index
    