class Traveler < User
  has_many :advertisements


  def create_ad
    @advertisement = Advertisement.new
  end
end
