class SessionsController < ApplicationController
  def new
  end

  def create
    binding.pry
    if params[:name].empty? || params[:name]==''
      redirect_to root_path
    else
      session[:name] = params[:name]
    end
  end

  def destroy
  end

end
