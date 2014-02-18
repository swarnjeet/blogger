class Review < ActiveRecord::Base
	validates_presence_of :title
		validates_presence_of :description
		 default_scope order('created_at DESC')
	def comments_count

  comments.count


end
	belongs_to :user
	has_many :comments,dependent: :destroy
	def self.search(search, page)
  paginate :per_page => 1, :page => page
end
end
