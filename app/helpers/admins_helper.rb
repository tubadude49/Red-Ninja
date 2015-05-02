module AdminsHelper

  def admin_log_in(user)
    session[:user_id] = user.id
  end

  def admin_current_user
    @current_user ||= Admin.find_by(id: session[:user_id])
  end

  def admin_logged_in?
    !current_user.nil?
  end

end