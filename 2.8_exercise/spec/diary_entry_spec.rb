require_relative '../lib/diary_entry'

describe DiaryEntry do
  it 'builds' do
    diary_entry = DiaryEntry.new('first title', 'first contents')
    expect(diary_entry.title).to eq 'first title'
    expect(diary_entry.contents).to eq 'first contents'
  end

  describe '#count_words' do
    it 'provides a word count for contents' do
      diary_entry = DiaryEntry.new('first title', '')
      expect(diary_entry.count_words).to eq 0
    end
  
    it 'provides a word count for contents' do
      diary_entry = DiaryEntry.new('first title', 'an odd number of words')
      expect(diary_entry.count_words).to eq 5
    end
  end

  describe '#reading_time' do
    it 'provides a reading time for contents' do
      diary_entry = DiaryEntry.new('first title', '')
      expect(diary_entry.reading_time(2)).to eq 0
    end

    it 'provides a reading time for contents' do
      diary_entry = DiaryEntry.new('first title', 'an odd number of words')
      expect(diary_entry.reading_time(2)).to eq 3
    end
  end

  describe '#reading_chunk' do
    it 'breaks entries into bits readable in time given' do
      diary_entry = DiaryEntry.new('first title', 'an odd number of words')
      expect(diary_entry.reading_chunk(1,1)).to eq 'an'
    end
  end
end
