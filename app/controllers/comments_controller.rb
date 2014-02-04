class CommentsController < ApplicationController
	def create
		@comment=Comment.new 
	@comment.comment=params[:comment][:comment]
		 
	 @comment.review_id=params[:comment][:review_id]
	 @comment.user_id=params[:comment][:user_id]
	

	@comment.save
	redirect_to review_path(@comment.review_id)
	end
	def edit
		@comment=Comment.find(params[:id])
	end
	def update
 	@comment = Comment.find(params[:id])
 	@comment.comment=params[:comment][:comment]
		 
	


	@comment.save
	redirect_to reviews_path
 end
 def destroy
 	@comment = Comment.find(params[:id])
  @comment.destroy
   redirect_to reviews_path
 end
end
