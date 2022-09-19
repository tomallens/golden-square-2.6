class Playlister

  def initialize
    @tracklist = []
  end

  def view_list
    return @tracklist
  end

  def add_track(track)
    unless @tracklist.include?(track)
      @tracklist << track
    end
  end
end
