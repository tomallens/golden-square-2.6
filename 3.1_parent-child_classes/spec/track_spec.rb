require_relative '../lib/track'

describe Track do
  it 'searches and matches keyword in title' do
    track = Track.new('song i made', 'some guy')
    expect(track.matches?('song')).to eq true
  end

  it 'searches and matches keyword in artist' do
    track = Track.new('song i made', 'some guy')
    expect(track.matches?('guy')).to eq true
  end

  it 'searches and matches keyword in neither' do
    track = Track.new('song i made', 'some guy')
    expect(track.matches?('fish')).to eq false
  end
end
