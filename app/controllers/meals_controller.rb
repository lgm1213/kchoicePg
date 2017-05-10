class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end


  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new
    if @meal.save
      flash[:success] = "Meal entered"
      redirect_to meals_index
    else
      render 'new'
    end
  end


  def edit
  end

  def show
  end
end
