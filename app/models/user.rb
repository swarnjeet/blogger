class User < ActiveRecord::Base
	

	def user_image(size)
if photo.present?
	return photo.url(size)
else
return "/assets/default_#{size}.png"
end
end
		validates_presence_of :email
	
	has_attached_file :photo, :styles => { :thumb => "90x90>" ,:large => "500x300>"}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :comments 
has_many :reviews
end
