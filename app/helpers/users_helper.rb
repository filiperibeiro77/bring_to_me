module UsersHelper

  def edit_profile_button_html(user_id)
   "<a href = '/users/#{user_id}/edit' class = 'btn btn-lg btn-info'> Editar Profile </a>"
  end
end