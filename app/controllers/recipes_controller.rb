class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])

  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
    @recipe.ingredients.build
  end

  def create
    @recipe = Recipe.create(recipes_params)
    puts @recipe.inspect
    redirect_to recipe_path(@recipe)
  end
  def recipes_params(*args)
    params.require(:recipe).permit(*args)
  end
end
