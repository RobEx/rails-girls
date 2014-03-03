class Idea < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	validates_presence_of :name, :description
	has_many :comments
	belongs_to :user
end
