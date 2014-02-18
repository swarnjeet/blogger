class Comment < ActiveRecord::Base
		validates_presence_of :comment
	 belongs_to :review
	 belongs_to :user
end
