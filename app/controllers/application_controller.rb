class ApplicationController < ActionController::Base
  
  protect_from_forgery
  
  private

  def current_cart
    puts "&&&&&&&&&coming here&&&&&&&&&"
	@cart = Cart.find(session[:cart_id])
	rescue ActiveRecord::RecordNotFound
	@cart = Cart.create
	session[:cart_id] = @cart.id
	puts "#############fff##############"
	puts @cart
	@cart
  end
  
  protected
def authorize
unless User.find_by_id(session[:user_id])
redirect_to :controller=>'sessions',:action=>'new', :notice => "Please log in"
end
end
  
  
end
