class SessionsController < ApplicationController
  def new
  end

  def create
    binding.pry
    if params[:name].nil? || params[:name]==''
      redirect_to root_path
    else
      binding.pry
      session[:name] = params[:name]
      binding.pry
      redirect_to secrets_show_path
    end
  end

  def destroy
    binding.pry
    if current_user
      session.delete :name
    end
  end

end
