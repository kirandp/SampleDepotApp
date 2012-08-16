
class SessionsController < ApplicationController
  def new
  end

  def create
  puts "444444444444444444444hi444444444444444444444444"
     if user = User.authenticate(params[:name], params[:password])
        session[:user_id] = user.id
         puts "444444444444444444444hi444444444444444444444444"
         redirect_to admin_url
          else
          puts "666666666666666666hello666666666666666666666666"
          redirect_to login_url, :alert => "Invalid user/password combination"
          end
   end
 
 

def show 

end



  def destroy
session[:user_id] = nil
redirect_to store_url, :notice => "Logged out"
end
end
