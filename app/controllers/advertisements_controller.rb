class AdvertisementsController < ApplicationController
  before_action :set_advertisement, only: [:show, :edit, :update, :destroy]
  before_action :redirect_if_traveler, only: [:new, :edit, :update, :destroy]



  def new
    @advertisement = Advertisement.new
  end

  def show
  end

  def edit
  end

  def create
    @advertisement = Advertisement.new(advertisement_params)
    @advertisement.traveler_id = current_user.id

      if @advertisement.save
        redirect_to @advertisement
      else
        render 'new'
      end
  end

  def update
      if @advertisement.update(advertisement_params)
        redirect_to @advertisement
      else
        render 'edit'
      end
  end

  def list
    @advertisements = Advertisement.all
  end

   private

   def set_advertisement
    @advertisement = Advertisement.find(params[:id])
   end

   def advertisement_params
      params.require(:advertisement).permit(:description, :travel_date, :destiny, :type_itens, :traveler_id)
    end
end
