class Book < ActiveRecord::Base
	validates :title, presence: true
	validates_uniqueness_of :title
end
