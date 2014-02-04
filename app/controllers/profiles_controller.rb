class ProfilesController < ApplicationController
	def show
		@profile=User.find(current_user.id)
	end
	
	def edit
 	@profile=User.find(current_user.id)
	end

 def update
 	
 	@profile = User.find(current_user.id)
	
 	@profile.email=params[:email]
		  @profile.photo=params[:photo]



	@profile.save
	redirect_to reviews_path
 end
 private
 def profile_params
 	params.require(:profile).permit(:photo)
end
end
