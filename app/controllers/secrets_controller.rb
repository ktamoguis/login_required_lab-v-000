class SecretsController < ApplicationController

  def show
    if session{}
    else
      binding.pry
      redirect_to login_path
    end
  end

end
