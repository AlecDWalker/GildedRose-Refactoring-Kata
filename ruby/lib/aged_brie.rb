# frozen_string_literal: true

require 'gilded_rose'

class AgedBrie < Item
  def update_quality
    @quality = 50 if @quality > 50
    @quality += 1 if @quality < 50
    @sell_in -= 1
  end
end
