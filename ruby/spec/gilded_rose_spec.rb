# frozen_string_literal: true

require 'gilded_rose'

describe GildedRose do
  describe '#update_quality' do
    it 'does not change the name' do
      items = [NormalItem.new('foo', 0, 0)]
      GildedRose.new(items).update
      expect(items[0].name).to eq 'foo'
    end
  end
end