module ApplicationHelper
  def show_dynamic_links
    if @auth
      link_to @auth.name, logout_path
    else
      link_to "Login", login_path
    end
  end

  def play_if_logged_in
    if @auth
      link_to "Play", play_path
    else
    end
  end

  def login_or_logout_links
    if @auth
      link_to "Logout", logout_path
    else
      link_to "Login", login_path
    end
  end

  def register_link
    if @auth
    else
      link_to "Register", new_user_path
    end
  end
end
