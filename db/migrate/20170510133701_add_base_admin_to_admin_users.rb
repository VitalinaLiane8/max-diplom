class AddBaseAdminToAdminUsers < ActiveRecord::Migration[5.0]
  
  AdminUser.create!(:email => 'max@gmail.com', :password => 'password', :password_confirmation => 'password')   
    
end
