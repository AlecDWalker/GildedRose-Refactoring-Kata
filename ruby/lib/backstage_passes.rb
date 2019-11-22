# frozen_string_literal: true

require 'gilded_rose'

class BackstagePasses < Item
  def update_quality
    @quality = if @sell_in > 10
                 @quality + 1
               elsif @sell_in > 5 && @sell_in < 11
                 @quality + 2
               elsif @sell_in.positive? && @sell_in < 6
                 @quality + 3
               else
                 0
               end
    @sell_in -= 1
    @quality = 50 if @quality > 50
  end
end
