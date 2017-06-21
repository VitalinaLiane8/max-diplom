class UsersController < ApplicationController
  
protect_from_forgery with: :null_session  
before_action :root_path, only: [:find]  
  

def new
  
  @user = User.new
  
end



def find
  
  email = params[:user][:email]
  
  if (User.find_by email: email) and (@user = User.find_by email: email)
    if @user.password == params[:user][:password]
      
      redirect_to root_path + 'users/income/' + @user.id.to_s + '/' + @user.key.to_s
      
    else 
      redirect_to root_path + 'msgs/error'
    end  
    
  else  
    @user = User.new
    
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.key = [*5..30].sample.to_s + [*5..30].sample.to_s + [*5..30].sample.to_s + [*5..30].sample.to_s
    
    @user.save
    
    redirect_to root_path + 'msgs/success_created'
  end  
  
end  



def income
  
  user_id = params[:user_id]
  key = params[:key]
  
  if User.find(user_id) and (@user = User.find(user_id))
    if @user.key == key
      @results = @user.results
      
    else
      redirect_to root_path + 'msgs/error'
    end  
    
    
  else  
    redirect_to root_path + 'msgs/error'
  end
  
end  

#_____________________________________________________________________________________________________________________________________________   
  
  
  private  
    def root_path
      root_path = (Msg.find_by title: 'root_path').field
    end  
  
    
    #def user_params
    #  params.require(:user).permit(:name, :email, :key)
    #end  

    
end
