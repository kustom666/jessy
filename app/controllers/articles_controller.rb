class ArticlesController < ApplicationController
	def index
		@articles = Article.last(5)
	end
	def show
		@article = Article.find(params[:id])
		@suggested = Article.last(3)
	end
end
