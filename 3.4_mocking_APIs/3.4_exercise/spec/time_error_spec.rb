require 'time_error'

RSpec.describe TimeError do
  it 'returns the difference between the remote clock and the local clock' do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(
      URI("https://worldtimeapi.org/api/ip")
    ).and_return('{"abbreviation":"BST","client_ip":"213.230.194.2","datetime":"2022-09-22T15:16:47.718217+01:00","day_of_week":4,"day_of_year":265,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1663856207,"utc_datetime":"2022-09-22T14:16:47.718217+00:00","utc_offset":"+01:00","week_number":38}')
    time = Time.new(2022, 9, 22, 15, 16, 47)
    time_error = TimeError.new(fake_requester)
    expect(time_error.error(time)).to eq 0.718217
  end
end