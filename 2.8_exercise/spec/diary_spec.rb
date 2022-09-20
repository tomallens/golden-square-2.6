require_relative '../lib/diary'

describe Diary do
  context 'intitially' do
    it 'creates empty list' do
      diary = Diary.new
      expect(diary.all).to eq []
    end
  end

  describe '#count_words' do
    context 'when counting an empty diary' do
      it 'returns 0' do
        diary = Diary.new
      expect(diary.count_words).to eq 0
      end
    end
  end
end