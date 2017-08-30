class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_worker!

  def after_sign_in_path_for(resource)
    workers_path
  end
end
