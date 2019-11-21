# frozen_string_literal: true

require 'gilded_rose'

class Sulfuras < Item
  def update_quality
    @quality = 50 if @quality > 50
  end
end
