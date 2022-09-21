require_relative '../lib/music_library'
require_relative '../lib/track'

describe 'integration' do
  it 'adds and can display tracks in library' do
    library = MusicLibrary.new
    track_1 = Track.new('song_a', 'artist_y')
    track_2 = Track.new('song_b', 'artist_z')
    library.add(track_1)
    library.add(track_2)
    expect(library.all).to eq [track_1, track_2]
  end

  # it 'does not add duplicates to library' do
  #   library = MusicLibrary.new
  #   track_1 = Track.new('song_a', 'artist_y')
  #   track_2 = Track.new('song_b', 'artist_z')
  #   track_3 = Track.new('song_a', 'artist_y')
  #   library.add(track_1)
  #   library.add(track_2)
  #   library.add(track_3)
  #   expect(library.all).to eq [track_1, track_2]
  # end

  context 'given a keyword that matches no tracks' do
    xit 'returns nothing' do
      library = MusicLibrary.new
      track_1 = Track.new('song_a', 'artist_y')
      track_2 = Track.new('song_b', 'artist_z')
      track_3 = Track.new('song_c', 'artist_y')
      library.add(track_1)
      library.add(track_2)
      library.add(track_3)
      expect(library.search(artist_f)).to eq []
    end
  end

  context 'given a keyword that matches multiple tracks' do
    xit 'returns a list of all tracks that match a keyword' do
      library = MusicLibrary.new
      track_1 = Track.new('song_a', 'artist_y')
      track_2 = Track.new('song_b', 'artist_z')
      track_3 = Track.new('song_c', 'artist_y')
      library.add(track_1)
      library.add(track_2)
      library.add(track_3)
      expect(library.search(artist_y)).to eq [track_1, track_3]
    end
  end
end
  