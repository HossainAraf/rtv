class ApplicationController < ActionController::Base
  before_action :authenticate_admin_for_feedbacks

  def authenticate_admin_for_feedbacks
    if params[:controller] == "feedbacks" && params[:action] != "index" && current_user.admin?
      redirect_to feedbacks_path, action: "You are not authorized to access this page."
    end
  end  
end
