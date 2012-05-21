class CategoriesController < ApplicationController
  
  def show
   @category = Category.find(params[:id]) 
   @food = @category.foods.order('LOWER(name) asc')
  end
  
end