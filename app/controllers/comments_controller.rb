class CommentsController < ApplicationController
	def index
		@comments = Comment.all
	end

	def create
		@blogpost = Blogpost.find(params[:blogpost_id])
		@comment = @blogpost.comments.create(comment_params)
		redirect_to blogpost_path(@blogpost)
	end

	private
	def comment_params
		params.require(:comment).permit(:username, :body)
	end
end
