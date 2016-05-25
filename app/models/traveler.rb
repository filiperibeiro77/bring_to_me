class Traveler < User
  has_many :advertisements , dependent: :destroy


  def create_ad
    @advertisement = Advertisement.new
  end
end
