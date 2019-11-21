# frozen_string_literal: true

require 'normal_item'
require 'gilded_rose'

describe NormalItem do
  it 'decreasess in quality at a normal rate until the sell by date' do
    item = NormalItem.new('Book', 5, 10)
    item.update_quality
    expect(item.sell_in).to eq 4
    expect(item.quality).to eq 9
  end

  it 'decreases in quality at doulbe speed after the sell by date' do
    item = NormalItem.new('Book', -1, 10)
    item.update_quality
    expect(item.sell_in).to eq -2
    expect(item.quality).to eq 8
  end

  it 'cannot set a negate quality value' do
    item = NormalItem.new('Book', 5, 0)
    item.update_quality
    expect(item.quality).to eq 0
  end
end
