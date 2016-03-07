class User < ActiveRecord::Base
# 	 validates :login, :email, presence: true
 
#        before_validation :ensure_login_has_a_value
#        before_save :destroy_last_user
#        before_save :detroy_current_user
 
#     protected
#       def ensure_login_has_a_value
#         if login.nil?
#           self.login = email unless email.blank?
#       end
#     end
  
#       def  destroy_last_user
#         @user = User.last
#         @user.destroy
# end

# def detroy_current_user
#   @user = User.find(self.user_id) unless self.user_id.nil?
#   @user.destroy unless @user.nil?
# end

end