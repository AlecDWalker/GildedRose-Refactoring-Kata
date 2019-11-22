# frozen_string_literal: true

require 'gilded_rose'

describe GildedRose do
  describe '#update' do
    it 'does not change the name' do
      items = [NormalItem.new('foo', 0, 0)]
      GildedRose.new(items).update
      expect(items[0].name).to eq 'foo'
    end
    it 'carries out the correct update on each item' do
      items = [
        NormalItem.new('Normal', 10, 25),
        ConjuredItem.new('Conjured', 10, 25),
        AgedBrie.new('Brie', 10, 25),
        Sulfuras.new('Sulfuras', nil, 25),
        BackstagePasses.new('Passes', 15, 25)
      ]
      GildedRose.new(items).update
      expect(items[0].quality).to eq 24
      expect(items[1].quality).to eq 23
      expect(items[2].quality).to eq 26
      expect(items[3].quality).to eq 25
      expect(items[4].quality).to eq 26
    end
  end
end
