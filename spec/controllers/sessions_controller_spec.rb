require 'rails_helper'

include SessionsHelper


RSpec.describe SessionsController, type: :controller do

  # instantiate a user with the mandatory params
 before do
   @user = User.new(password: 'teste123', password_confirmation: 'teste123')
   @user.contact = Contact.new(user_email: "teste@gmail.com")
   @user.save
 end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end


  describe "#destroy" do
  it "should sign out the user" do
    sign_in(@user)
    get :destroy
    expect(session[:user_id]).to be(nil)
    expect(response).to redirect_to(root_path)
  end
end

end
