class Post < ActiveRecord::Base
	has_attached_file :image
	validates :text, :presence => true
	validates :user_id, :presence => true
	belongs_to :user
end
