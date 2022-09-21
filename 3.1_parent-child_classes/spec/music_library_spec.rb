require_relative '../lib/music_library'

RSpec.describe MusicLibrary do
  it 'adds and can display tracks in library' do
    library = MusicLibrary.new
    track_1 = double :track
    track_2 = double :track
    library.add(track_1)
    library.add(track_2)
    expect(library.all).to eq [track_1, track_2]
  end

  describe '#search' do
    it 'returns tracks that contain keyword' do
      library = MusicLibrary.new
      track_1 = double :track, matches?: true
      track_2 = double :track, matches?: false
      track_3 = double :track, matches?: true
      library.add(track_1)
      library.add(track_2)
      library.add(track_3)
      expect(library.search('artist_y')).to eq [track_1, track_3]
    end
  end
end
  
    