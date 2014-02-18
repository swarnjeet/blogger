class ProfilesController < ApplicationController
	def show
		@profile=User.find(params[:id])
	end
	
	def edit
 	@profile=User.find(current_user.id)
	end

 def update
 	
 	@profile = User.find(current_user.id)
	
 	@profile.email=params[:email]
		  @profile.photo=params[:photo]
@profile.dob=params[:dob]
@profile.name=params[:name]
@profile.address=params[:address]


	 respond_to do |format|
     if @profile.save
       format.html { redirect_to reviews_path, notice: 'profile was successfully updated.' }
       format.json { render action: 'show', status: :created, location: @profile }
     else
       format.html { render action: 'edit' }
       format.json { render json: @profile.errors, status: :unprocessable_entity }
     end
   
                 
    
     end
 end
 private
 def profile_params
 	params.require(:profile).permit(:photo)
end
end
