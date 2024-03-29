class HomeController < ApplicationController
  def index
    redirect_to new_user_registration_path
  end

  def popup
  end
end
