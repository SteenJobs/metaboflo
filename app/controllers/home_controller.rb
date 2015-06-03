class HomeController < ApplicationController
  def index
    if current_user.admin?
      redirect_to 'clients/home'
    else
      redirect_to 'admin'
    end
  end
end
