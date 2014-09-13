class SesionesController < ApplicationController
  def login
      if request.post?
        email= params[:email]
        password= params[:password]
        @cliente = Cliente.find_by email: email, password: password
        render json: @cliente
        #if (@cliente != nil) 
        #  render json: @cliente
        #else
        #  render json: {}
        #end
      end
  end

  def logout
  end
end
