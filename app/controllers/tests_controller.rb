class TestsController < ApplicationController
  
protect_from_forgery with: :null_session  
#before_action :root_path, only: [:create, :update]  
  

def all
  
  user_id = params[:user_id]
  key = params[:key]
  
  if User.find(user_id) and (@user = User.find(user_id)) and @user.key == key 
    
      @tests = Test.all
      @root_path = root_path
      
  else
    redirect_to root_path + 'msgs/error'    
  end  
  
end



def index
  
  user_id = params[:user_id]
  key = params[:key]
  
  test_id = params[:test_id]
  
  if User.find(user_id) and (@user = User.find(user_id)) and @user.key == key and Test.find(test_id) and (@test = Test.find(test_id))
  else
    redirect_to root_path + 'msgs/error'    
  end      
    
  
end  
 

def success
  
  @msg = (Msg.find_by title: 'Success_tested').field
  
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
