class PortfoliosController < ApplicationController
  ########## ALL PORTFOLIOS ##########
  def index
    @portfolio_items = Portfolio.all
    # using ruby_on_rails_items scope
    # @portfolio_items = Portfolio.ruby_on_rails_items
    # using angular scope
    # @portfolio_items = Portfolio.angular
  end

  ########## CREATE PORTFOLIO (new , create) ##########
  def new
    @portfolio_item = Portfolio.new
    # create technologies attr
    3.times { @portfolio_item.technologies.build }
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


  ########## DELETE PORTFOLIO ##########
  def destroy
    @portfolio_item = Portfolio.find(params[:id])
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully removed.' }
    end
  end


  ########## PRIVATE METHODS ##########
  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
  end

end
