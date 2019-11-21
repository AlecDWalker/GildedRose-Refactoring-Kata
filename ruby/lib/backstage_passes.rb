require 'gilded_rose'

class BackstagePasses < Item

  def update_quality

    if @sell_in > 10
      @quality = @quality + 1
    elsif @sell_in > 5 && @sell_in < 11
      @quality = @quality + 2
    elsif @sell_in > 0 && @sell_in < 6
      @quality = @quality + 3
    else
      @quality = 0
    end
    @sell_in = @sell_in -1
  end

end
