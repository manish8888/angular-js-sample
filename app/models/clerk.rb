class Clerk < ActiveRecord::Base
	belongs_to :company, touch: true
       after_touch do
       puts 'An clerk	 was touched'
    end

end
	