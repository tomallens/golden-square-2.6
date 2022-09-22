require 'cat_facts'

RSpec.describe 'fulfils need for cat facts' do
  it 'is a test for cats' do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(
      URI("https://catfact.ninja/fact")
    ).and_return('{"fact":"Cats control the outer ear using 32 muscles; humans use 6","length":57}')
    fake_fact = CatFacts.new(fake_requester)
    expect(fake_fact.provide).to eq "Cat fact: Cats control the outer ear using 32 muscles; humans use 6"
  end
end