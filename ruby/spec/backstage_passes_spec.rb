require 'backstage_passes'
require 'gilded_rose'

describe BackstagePasses do

  it 'increases quality at a normal pace with more than 10 days to go' do
    pass = BackstagePasses.new("Pass", 20, 10)
    pass.update_quality
    expect(pass.quality).to eq 11
  end

  it 'increases quality at double pace between 5 and 10 sell in days' do
    pass = BackstagePasses.new("Pass", 8, 10)
    pass.update_quality
    expect(pass.quality).to eq 12
  end

  it 'increases quality at triple pace with 5 or fewer days left' do
    pass = BackstagePasses.new("Pass", 2, 10)
    pass.update_quality
    expect(pass.quality).to eq 13
  end

  it 'sets the value to 0 once the event has passed' do
    pass = BackstagePasses.new("Pass", 0, 10)
    pass.update_quality
    expect(pass.quality).to eq 0
  end

end
