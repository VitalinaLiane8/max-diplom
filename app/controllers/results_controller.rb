class ResultsController < ApplicationController
  
protect_from_forgery with: :null_session  
#before_action :root_path, only: [:create, :update]  
  

def all
  
  @tests = Test.all
  
end



def index
  
  
  
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
