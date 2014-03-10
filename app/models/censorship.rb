class Censorship < ActiveRecord::Base
	belongs_to :comment
	belongs_to :idea

end
