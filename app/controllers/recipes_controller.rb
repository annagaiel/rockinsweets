class RecipesController < ApplicationController

		def index
			@recipe = Recipe.all
		end

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
			 params.require(:recipe).permit(:title, :text)
		 end
end
