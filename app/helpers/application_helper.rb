module ApplicationHelper
  def show_dynamic_links
    if @auth
      link_to @auth.name, logout_path
    else
      link_to "Login", login_path
    end
  end
end
