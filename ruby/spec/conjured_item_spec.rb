# frozen_string_literal: true

require 'conjured_item'
require 'gilded_rose'

describe ConjuredItem do
  it 'decreasess in quality at a 2x rate until the sell by date' do
    item = ConjuredItem.new('Book', 5, 10)
    item.update_quality
    expect(item.sell_in).to eq 4
    expect(item.quality).to eq 8
  end

  it 'decreases in quality at a 4x rate after the sell by date' do
    item = ConjuredItem.new('Book', -1, 10)
    item.update_quality
    expect(item.sell_in).to eq(-2)
    expect(item.quality).to eq 6
  end

  it 'cannot set a negate quality value' do
    item = ConjuredItem.new('Book', 5, 0)
    item.update_quality
    expect(item.quality).to eq 0
  end
end
