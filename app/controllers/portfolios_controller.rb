class PortfoliosController < ApplicationController
  ########## ALL PORTFOLIOS ##########
  def index
    @portfolio_items = Portfolio.all
  end

  ########## CREATE PORTFOLIO (new , create) ##########
  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your Portfolio is live.' }
      else
        format.html { render :new }
      end
    end
  end

  ########## UPDATE PORTFOLIO (edit, update)##########
  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  ########## SHOW PORTFOLIO ##########
  def show
    @portfolio_item = Portfolio.find(params[:id])
  end


  ########## PRIVATE METHODS ##########
  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end

end
