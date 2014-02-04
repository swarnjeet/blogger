class Review < ActiveRecord::Base
	has_many :comments
	def self.search(search, page)
  paginate :per_page => 1, :page => page
end
end
