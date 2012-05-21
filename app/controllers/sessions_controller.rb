class SessionsController < ApplicationController
  
  def destroy
    session[:login_id] = nil
    flash[:notice] = "K BYE!"
    redirect_to root_url
  end
 
  def new
  end
  
  def create
  user = User.find_by_login(params[:login])
  
  if user
    if user.authenticate(params[:password])
        session[:login_id] = user.id
        redirect_to root_url, notice: "Hello, #{user.login}"
    else
      redirect_to root_url, notice: "Bad password!"
    end
  else
      redirect_to root_url, notice: "Bad login ID!"
  end
end
  
  def show
    @user = User.find(params[id])
  end 

end
