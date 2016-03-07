class Category < ActiveRecord::Base
	 # validates :login, :email, presence: true
 
  # before_validation :ensure_login_has_a_value
  # before_save :destroy_last_user
  # before_save :detroy_current_user
 
  #    protected
  #       # def ensure_login_has_a_value
  #       #   if login.nil?
  #       #   self.login = email unless email.blank?
  #       #   end
  #       # end
  
  #       def  destroy_last_user
  #        @user = User.last
  #        @user.destroy
  #       end

  #       def detroy_current_user
  #         # @user = User.find(self.user_id) unless self.user_id.nil?
  #         @user = User.find(2)
  #         @user.destroy unless @user.nil?
  #       end

      
  #       def User.count
  #         @category = Category.new
  #         @category.save
  #         User.count
  #       end

  
  #  after_initialize do |user|
  #    puts "You have initialized an object!"
  # end
 
 
  #  after_find do |user|
  #    puts "You have found an object!"
  # end

  # after_destroy do |user|
  #    puts "You have destroyed an object!"
  # end


  # after_touch do |user|
  #   puts "You have touched an object"
  # end

    before_save :destroy_first_user, if: :users_exists?
      def users_exists?
        if User.count > 0
         true
      end
      
      def destroy_first_user
        @user=User.first
        @user.destroy
      end
  end
end