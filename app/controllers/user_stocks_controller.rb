class UserStocksController < ApplicationController
  before_action :set_user_stock, only: [:show, :edit, :update, :destroy]

  # GET /user_stocks
  # GET /user_stocks.json
  def index
    @user_stocks = UserStock.all
  end

  # GET /user_stocks/1
  # GET /user_stocks/1.json
  def show
  end

  # GET /user_stocks/new
  def new
    @user_stock = UserStock.new
  end

  # GET /user_stocks/1/edit
  def edit
  end

  # POST /user_stocks
  # POST /user_stocks.json
  def create
    if params[:stock_id].present?
       @user_stock = UserStock.new(stock_id: params[:stock_id], user: current_user)
    else
      stock = Stock.find_by_ticker(params[:stock_ticker])
      if stock
        @user_stock = UserStock.new(user: current_user, stock: stock)
        else
        stock = Stock.new_from_lookup(params[:stock_ticker])
        if stock.save
          @user_stock = UserStock.new(user: current_user, stock: stock)
          else
          @user_stock = nil
          flash[:error] = "Stock is not av