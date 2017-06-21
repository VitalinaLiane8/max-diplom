class MsgsController < ApplicationController
  
protect_from_forgery with: :null_session  
#before_action :root_path, only: [:find]  
  

def error
  
  @msg = (Msg.find_by title: 'error').field
  
end



def success_created
  
  @msg = (Msg.find_by title: 'success_created').field
  
end



def success_tested
  
  @msg = (Msg.find_by title: 'success_tested').field
  
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
