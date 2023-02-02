class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      render 'new'
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private
  
  def recipe_params
    params.require(:recipe).permit(:name)
  end
end

#   def edit
#     @ingredient = Ingredient.find(params[:id])
#   end

#   def update
#     @ingredient = Ingredient.find(params[:id])
#     @ingredient.update(ingredient_params)
#     redirect_to @ingredient
#   end

