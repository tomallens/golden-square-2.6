require_relative "../lib/playlister"

describe Playlister do
  it 'creates an array on build' do
    playlist = Playlister.new
    expect(playlist.view_list).to eq []
  end

  describe '#add_track' do
    context 'when given a string' do
      it 'adds it to the array' do
        playlist = Playlister.new
        playlist.add_track("a song")
        expect(playlist.view_list).to eq ["a song"]
      end
    end

    context 'when given another string' do
      it 'appends to the array' do
        playlist = Playlister.new
        playlist.add_track("a song")
        playlist.add_track("another song")
        expect(playlist.view_list).to eq ["a song", "another song"]
      end
    end

    context 'when given a duplicate string' do
      it 'does not append it' do
        playlist = Playlister.new
        playlist.add_track("a song")
        playlist.add_track("another song")
        playlist.add_track("a song")
        expect(playlist.view_list).to eq ["a song", "another song"]
      end
    end
  end
end