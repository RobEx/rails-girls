class Comment < ActiveRecord::Base
	belongs_to :idea
	belongs_to :user
	has_many :censorships
	has_many :replies
	validates_presence_of :body

	def censored_body
		tmp = body
		Censorship.all.each do |c|
		  tmp.gsub!(c.censored_word, c.replace_with)
        end
        tmp
	end


end
