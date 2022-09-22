require_relative '../lib/secret_diary'

RSpec.describe SecretDiary do
  context 'initially' do
    it 'does not read the diary because it starts locked' do
      diary = double :diary
      secret_diary = SecretDiary.new(diary)
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end

  context 'after being locked' do
    it 'allows reading when unlocked' do
      diary = Diary.new('Test Contents')
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "Test Contents"
    end
  end
  context 'when unlocked' do
    it 'reads the diary contents' do
      diary = double :diary, read: "Test Contents"
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "Test Contents"
    end
  end
end

