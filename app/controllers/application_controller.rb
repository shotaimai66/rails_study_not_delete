class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    users_dash_boards_path
  end
end
