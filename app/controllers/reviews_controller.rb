class ReviewsController < ApplicationController
def index
	
	@review = Review.all.paginate(:page =>params[:page], :per_page=>1)
end
def show
	@reviews=Review.find(params[:id])
	@id=@reviews.id
	end
	def new
		@review=Review.new

	end
	def create
	@review=Review.new 
	@review.title=params[:review][:title]
		  @review.description=params[:review][:description]
		  @review.user_id=params[:review][:user_id]
	
	

	@review.save
	redirect_to reviews_path
	end
	
		def destroy
 	@review = Review.find(params[:id])
  @review.destroy
 
  redirect_to reviews_path
 end
 def edit
 	@review=Review.find(params[:id])
 end
 def update
 	@review = Review.find(params[:id])
 	@review.title=params[:review][:title]
		  @review.description=params[:review][:description]
	@review.user_id=params[:review][:user_id]
	


	@review.save
	redirect_to reviews_path
 end
 private
 def review_params
 	params.require(:review).permit(:photo)
end
end
