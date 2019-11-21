# frozen_string_literal: true

require 'sulfuras'
require 'gilded_rose'

describe Sulfuras do
  it 'maintains its quality' do
    sulfuras = Sulfuras.new('Sulfuras', nil, 50)
    sulfuras.update_quality
    expect(sulfuras.quality).to eq 50
    expect(sulfuras.sell_in).to eq nil
  end
end
