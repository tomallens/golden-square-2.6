require_relative '../lib/diary'

RSpec.describe Diary do
  it 'builds' do
    diary = Diary.new('some text')
    expect(diary.read).to eq 'some text'
  end
end