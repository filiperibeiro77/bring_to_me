module UserHelper
 def user_params
  params.require(:user).permit(:user_name, :password, :user_cpf, :user_sex, :user_date_of_birth, adress_attributes: [:id , :public_place,
  :adress_number, :neighborhood, :adress_city, :adress_cep, :adress_complement, :adress_state],
  contact_attributes: [:id , :user_email, :user_home_phone, :user_cel_phone])    
  end
end