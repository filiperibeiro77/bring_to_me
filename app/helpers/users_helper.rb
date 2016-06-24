module UsersHelper

  def edit_profile_button_html(user_id)
   "<a href = '/users/#{user_id}/edit' class = 'btn btn-lg btn-info'> Editar Profile </a>"
  end

  def rate(qualification, traveler_id)

  	traveler = Traveler.find(traveler_id)

  	proxy = UserProxy.new(traveler)
  	proxy.rate(qualification, traveler_id)

  end

end