class BlogCommentsController < ApplicationController
	def create
		params.require(:blog_comment).permit(:content)
		@comment = BlogComment.new
		@comment.content = ActionController::Base.helpers.strip_tags(params[:blog_comment][:content])
		@comment.user_id = current_user.id
		@comment.article_id = params[:article_id]
		@article = Article.find_by_id(params[:article_id])
		if @comment.save
			redirect_to @article
		end
	end
end
