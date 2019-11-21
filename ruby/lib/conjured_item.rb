require 'gilded_rose'

class ConjuredItem < Item

  def update_quality
    if @sell_in < 0
      @quality = @quality - 4
    else
      @quality = @quality -2
    end
    @sell_in = @sell_in - 1
    @quality = 0 if @quality <0
  end

end
