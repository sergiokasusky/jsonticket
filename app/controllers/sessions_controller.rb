class SessionsController < ApplicationController
  def new
  end
 
  def create
    user= User.find_by(email: params[:session][:email], password: params[:session][:password])
    if (user != nil)
      session[:current_user_id] = user.id
      redirect_to clientes_path
    else
      render 'new', notice: 'Usuario o password no válidos' 
      #render "error"
    end
  end
 
  def destroy
    # Remove the user id from the session
    @_current_user = session[:current_user_id] = nil
    redirect_to root_url
  end
end
