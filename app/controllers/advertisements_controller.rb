class AdvertisementsController < ApplicationController

  def new
    #create_ad
    @advertisement = Advertisement.new
  end

  def create
    @advertisement = Advertisement.new(advertisement_params)

    respond_to do |format|
      if @advertisement.save
        format.html { redirect_to @advertisement, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @advertisement }
        redirect_to root_path
      else
        format.html { render :new }
        format.json { render json: @advertisement.errors, status: :unprocessable_entity }
      end
    end
  end


   def advertisement_params
      params.require(:advertisement).permit(:description, :destiny, :type_itens, :traveler)
    end
end