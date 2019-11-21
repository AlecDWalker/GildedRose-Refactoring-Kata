require 'sulfuras'

describe Sulfuras do
  it 'maintains its quality' do
    sulfuras = Sulfuras.new("Sulfuras", 0, 50)
    sulfuras.update_quality
    expect(sulfuras.quality).to eq 50
    expect(sulfuras.sell_in).to eq 0
  end
end
