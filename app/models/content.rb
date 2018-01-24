class Content < ApplicationRecord

	after_initialize do
	    if new_record?
	      self.nav ||= 'admin' # be VERY careful with ||= and False values
	      
	    end
	end
end
