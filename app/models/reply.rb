class Reply < ActiveRecord::Base
	belongs_to :comment
	belongs_to :idea
	belongs_to :user
	validates_presence_of :description
end
