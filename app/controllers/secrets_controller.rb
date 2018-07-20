class SecretsController < ApplicationController

  def show
    if session{}
    else
      redirect_to login_path
    end
  end

end
