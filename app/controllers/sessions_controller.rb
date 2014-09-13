class SessionsController < ApplicationController
  def new
  end
 
  def create
    if user = Cliente.find_by(params[:email], params[:password])
      session[:current_user_id] = user.id
      redirect_to clientes_path
    else
      render 'new'
    end
  end
 
  def destroy
    # Remove the user id from the session
    @_current_user = session[:current_user_id] = nil
    redirect_to root_url
  end
end
