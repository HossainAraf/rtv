class AdminPanelController < ApplicationController
  before_action :authenticate_special_user!

  def index
  end

  private

  def authenticate_special_user!
    unless current_user && current_user.email == "jd007nm007@gmail.com"
      redirect_to root_path
    end
  end

end
