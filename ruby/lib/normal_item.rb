require 'gilded_rose'

class NormalItem < Item

  def update_quality
    @quality = 50 if @quality > 50
    if @sell_in < 0
      @quality = @quality - 2
    else
      @quality = @quality -1
    end
    @sell_in = @sell_in - 1
    @quality = 0 if @quality <0
  end

end
