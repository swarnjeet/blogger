class ReviewsController < ApplicationController
def index
	
	@review = Review.all.paginate(:page =>params[:page],:per_page => 5)
	@user=User.all
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
	
	

	
	
	
	 respond_to do |format|
     if @review.save
       format.html { redirect_to reviews_path, notice: 'Article was successfully created.' }
       format.json { render action: 'show', status: :created, location: @review }
     else
       format.html { render action: 'new' }
       format.json { render json: @review.errors, status: :unprocessable_entity }
     end
   
                 
    
     end
	end
	
		def destroy
 	@review = Review.find(params[:id])
  @review.destroy
 
  redirect_to reviews_path
 end
 def userreview
@user=User.find(params[:id])
 end
 def edit
 	@review=Review.find(params[:id])
 end
 def update
 	@review = Review.find(params[:id])
 	@review.title=params[:review][:title]
		  @review.description=params[:review][:description]
	@review.user_id=params[:review][:user_id]
	


	 respond_to do |format|
     if @review.save
       format.html { redirect_to reviews_path, notice: 'Article was successfully created.' }
       format.json { render action: 'show', status: :created, location: @review }
     else
       format.html { render action: 'new' }
       format.json { render json: @review.errors, status: :unprocessable_entity }
     end
   
                 
    
     end
 end
 private
 def review_params
 	params.require(:review).permit(:photo)
end
end
