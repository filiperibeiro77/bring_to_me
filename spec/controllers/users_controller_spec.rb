RSpec.describe UsersController, type: :controller do
  include SessionsHelper

  before do
    # instantiate a user with the mandatory params
    @user = User.new(password: 'teste123',
                    password_confirmation: 'teste123')
    @user.contact = Contact.new(user_email: "teste@gmail.com")
    @user.save

  end

  # checks if a controller_user calls a view new to creat a new user
  describe "GET" do
    describe '#new' do
      it "should have http_status success" do
        get :new
        expect(response).to have_http_status(:success)
      end
    end
  end

end
