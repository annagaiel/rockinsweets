class RecipesController < ApplicationController
	def new
		@recipe = Recipe.new
	end

	def create
	@recipe = Recipe.new(recipe_params)

	@recipe.save
	redirect_to @recipe
	end

	private
	def recipe_params
		params.require(:recipe).permit(:title, :text)
	end

	def show
	 @recipe = Recipe.find(params[:id])
 end
end
