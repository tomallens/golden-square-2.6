require_relative '../lib/diary'
require_relative '../lib/diary_entry'

RSpec.describe 'integration' do
  context 'when it has entries in' do
    it 'lists them' do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new('first title', 'first contents')
      diary_entry2 = DiaryEntry.new('second title', 'second contents')
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.all).to eq [diary_entry1, diary_entry2]
    end
  end

  describe '#count_words' do
    it 'returns word count for all entries' do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new('first title', 'first contents')
      diary_entry2 = DiaryEntry.new('second title', 'second contents')
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.count_words).to eq 4
    end
  end

  describe 'word counting behaviour' do
    it 'calculates total reading time for all entries' do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new('first title', 'first contents')
      diary_entry2 = DiaryEntry.new('second title', 'second contents')
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.reading_time(2)).to eq 2
    end
  end

  describe 'best reading time behaviour' do
    context 'where only 1 entry exists and it is unreadable in time' do
      it 'returns nil' do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new('first title', 'first contents')
        diary.add(diary_entry1)
        expect(diary.find_best_entry_for_reading_time(1,1)).to eq nil
      end
    end

    context 'where only 1 entry exists and it is readable in time' do
      it 'returns that entry' do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new('first title', 'first contents')
        diary.add(diary_entry1)
        expect(diary.find_best_entry_for_reading_time(2,2)).to eq diary_entry1
      end
    end

    context 'where entries exists and one is readable in time' do
      it 'returns that entry' do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new('first title', 'first contents')
        diary_entry2 = DiaryEntry.new('second title', 'second contents but longer')
        diary.add(diary_entry1)
        diary.add(diary_entry2)
        expect(diary.find_best_entry_for_reading_time(2,1)).to eq diary_entry1
      end
    end

    context 'where entries exists and multiple are readable in time' do
      it 'returns longest readable entry' do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new('first title', 'first contents')
        diary_entry2 = DiaryEntry.new('second title', 'second contents but longer')
        diary.add(diary_entry1)
        diary.add(diary_entry2)
        expect(diary.find_best_entry_for_reading_time(2,2)).to eq diary_entry2
      end
    end
    
  end
end

