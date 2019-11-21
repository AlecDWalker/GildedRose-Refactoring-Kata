# frozen_string_literal: true

require 'aged_brie'
require 'gilded_rose'

describe AgedBrie do
  it 'increases in quality and decreses the sell_in value' do
    brie = AgedBrie.new('Aged Brie', 3, 5)
    brie.update_quality
    expect(brie.quality).to eq 6
    expect(brie.sell_in).to eq 2
  end

  it 'cannot increase the quality over 50' do
    brie = AgedBrie.new('Aged Brie', 5, 50)
    brie.update_quality
    expect(brie.quality).to eq 50
  end
end
