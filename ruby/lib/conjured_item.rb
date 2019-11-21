# frozen_string_literal: true

require 'gilded_rose'

class ConjuredItem < Item
  def update_quality
    @quality = 50 if @quality > 50
    @quality = if @sell_in < 0
                 @quality - 4
               else
                 @quality - 2
               end
    @sell_in -= 1
    @quality = 0 if @quality < 0
  end
end
