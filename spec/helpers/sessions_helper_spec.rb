require 'rails_helper'

include SessionsHelper

RSpec.describe SessionsHelper, type: :helper do

  # instantiate a user with the mandatory params
 before do
   @user = User.new(password: 'teste123', password_confirmation: 'teste123')
   @user.contact = Contact.new(user_email: "teste@gmail.com")
   @user.save
 end



 # test to verify if the user can sign out with succes
describe '#sign_out' do
    it 'the user should logout with success' do
      sign_in @user
      sign_out
      expect(current_user).to be(nil)
  end
end

#describe '#block_access' do
#   it 'the user should redirect with sucess' do
#     sign_in @user
#     expect(response).to redirect_to(root_url)
 #end
#end


  # test to verify if the current user is null, after the user signed out
  describe '#logged_in?' do
    it 'expect signout to clear current_user' do
      sign_in @user
      sign_out
      expect(logged_in?).to be(false)
    end
  end



end
