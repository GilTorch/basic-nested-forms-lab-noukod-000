class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])

  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name:'')
    @recipe.ingredients.build(name:'')
  end

  def create
      @recipe = Recipe.create(recipes_params)
      redirect_to recipe_path(@recipe)

  def recipes_params(*args)
    params.require(:recipe).permit(*args)
  end
end
