class MealsController < ApplicationController
  
  def index
    @meals = Meal.all
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      flash[:success] = "Meal entered"
      redirect_to meals_path
    else
      render 'new'
    end
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    @meal = Meal.find(params[:id])
    if @meal.update_attributes(meal_params)
      flash[:sucess] = "Updated meal info"
      redirect_to @meal
    else
      render 'edit'
    end
  end

  def destroy
    Meal.find(params[:id]).destroy
    flash[:success] = "Meal Deleted"
    redirect_to meals_path
  end

private

  def meal_params
    params.require(:meal).permit(:name, :description, :venue_id)
  end



end
