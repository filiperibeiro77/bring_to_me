class UserDecorator
  include Decorator
  include UsersHelper

  def edit_profile_button(current_user_id, user_id)

    if current_user_id == user_id
      edit_profile_button_html(user_id)
    else 
     ""
    end
  end

end

