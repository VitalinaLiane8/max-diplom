class ResultsController < ApplicationController
  
protect_from_forgery with: :null_session  
before_action :root_path, only: [:define_mark]  
  

def define_mark
  
  @test = Test.find(params[:test_id])
  @user = User.find(params[:user_id])
  
  @result = @user.results.build
  @result.test_title = @test.title
  @result.test_id = @test.id
  
  @msg = (Msg.find_by title: 'success_tested').field
  @link_to_cabinet = root_path + 'users/income/' + @user.id.to_s + '/' + @user.key.to_s
  
  
  @mark = 0
  @test.qws.each do |qw|
    @mark += params[qw.title].to_i
  end  
  
  @result.mark = @mark
  @result.save
  
  #@param1 = params[:t1qw1]

  
  
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
