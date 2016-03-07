class CreateUserApiAuthenticationCredentials < ActiveRecord::Migration
  def up
  	create_table :user_api_authentication_credentials do |t|
      t.string :user_name
      t.string :password
      t.string :token
      t.timestamps
    end
  end

  def down
  	drop_table :user_api_authentication_credentials
  end
end
