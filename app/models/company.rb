class Company < ActiveRecord::Base
	  has_many :clerk
        after_touch :log_when_clerks_or_company_touched
 s
  private
   def log_when_employees_or_company_touched
    puts 'Clerk/Company was touched'
   end

end
