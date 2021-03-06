class UsersController < ApplicationController
  before_action :authorize, except: [:new, :create]
  before_action :set_user, only: [:edit, :update, :destroy]
  before_action :correct_user?, only: [:edit, :update, :destroy]


  # GET /users/1
  # GET /users/1.json
  def show
     @user = UserDecorator.decorate(User.find(params[:id]))
  end

  # GET /users/new
  def new
    @user = User.new
    @user.adress = Adress.new
    @user.contact = Contact.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
        sign_in(@user)
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:user_name, :password, :user_cpf, :user_sex, :user_date_of_birth, adress_attributes: [:id , :public_place,
      :adress_number, :neighborhood, :adress_city, :adress_cep, :adress_complement, :adress_state],
      contact_attributes: [:id , :user_email, :user_home_phone, :user_cel_phone])
    end
end
