# frozen_string_literal: true

require 'gilded_rose'

class NormalItem < Item
  def update_quality
    @quality = 50 if @quality > 50
    @quality = if @sell_in.negative?
                 @quality - 2
               else
                 @quality - 1
               end
    @sell_in -= 1
    @quality = 0 if @quality.negative?
  end
end
