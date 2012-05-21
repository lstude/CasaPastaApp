class FoodsController < ApplicationController
  
  def index
    @food = Food.order('LOWER(name) asc').all
  end
  
  def show
    @food = Food.find(params[:id])
  end
  
  def new
    @food = Food.new
  end
  
  def create
    @food = Food.new(params[:food])
    if @food.save
      redirect_to root_url, notice: "New food added!"
    else
      render :new
    end
  
  end
  
end