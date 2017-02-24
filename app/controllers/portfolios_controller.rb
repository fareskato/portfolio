class PortfoliosController < ApplicationController
  #  all portfolios
  def index
    @portfolio_items = Portfolio.all
  end

  #  Create new portfolio
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

  #  Private methods
  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end

end
