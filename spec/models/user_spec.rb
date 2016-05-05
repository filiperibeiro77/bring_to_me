require 'rails_helper'

RSpec.describe User, type: :model do
    context "user is valid" do
        it "Is valid user?" do
        user = User.new
        user.user_name = "Ruan"
        user.password = "Ru123456"
        user.user_cpf = "12announcement345678"
        user.user_sex = "Masculino"

        expect(user.valid?).to be_truthy
      end
    end
  end
