class Product < ActiveRecord::Base

	def self.sort(by)
		if by == 'alphabetical'
			order(:name)
		else
			all
		end
	end 
end
