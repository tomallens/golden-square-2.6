require_relative '../lib/diary'
require_relative '../lib/secret_diary'

RSpec.describe 'integration' do
  context 'initially' do
    it 'does not read the diary because it starts locked' do
      diary = Diary.new('Test Contents')
      secret_diary = SecretDiary.new(diary)
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end

  context 'after being unlocked' do
    it 'stops reading when locked again' do
      diary = Diary.new('Test Contents')
      secret_diary = SecretDiary.new(diary)
      secret_diary.lock
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end

  context 'when unlocked' do
    it 'reads the diary contents' do
      diary = Diary.new('Test Contents')
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "Test Contents"
    end
  end
end