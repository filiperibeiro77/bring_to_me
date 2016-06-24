module UsersHelper

  def edit_profile_button_html(user_id)
   "<a href = '/users/#{user_id}/edit' class = 'btn btn-lg btn-info'> Editar Profile </a>"
  end

  def rate(qualification, traveler_id)

  	traveler = Traveler.find(traveler_id)  	
  	if traveler.qualification == nil
  		traveler.qualification = qualification.to_f
  	else
  		traveler.qualification = ((traveler.qualification + qualification.to_f) / 2.0).round(2)
  	end
  	traveler.password = '123456'
  	traveler.save
  	traveler.mostrar

  end


end