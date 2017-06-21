class TestsController < ApplicationController
  
protect_from_forgery with: :null_session  
#before_action :root_path, only: [:create, :update]  
  

def all
  
  @tests = Test.all
  
end



def index
  
  
  
end  
 

def success
  
  @msg = (Msg.find_by title: 'Success_tested').field
  
end  

#_____________________________________________________________________________________________________________________________________________   
  
  
  private  
    def root_path
      root_path = (Msg.find_by title: 'root_path').value
    end  
  
    
    #def user_params
    #  params.require(:user).permit(:name, :email, :key)
    #end  

    
end
