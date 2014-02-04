class User < ActiveRecord::Base
	has_attached_file :photo, :styles => { :thumb => "60x60>" }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :comments
end
