require_relative '../lib/string_repeater'

describe StringRepeater do
  it 'repeats given string in terminal' do
    terminal = double :terminal

    expect(terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(terminal).to receive(:puts).with("Please enter a string").ordered
    expect(terminal).to receive(:gets).and_return("TWIX")
    expect(terminal).to receive(:puts).with("Please enter a number of repeats").ordered
    expect(terminal).to receive(:gets).and_return(10)
    expect(terminal).to receive(:puts).with("Here is your result:").ordered
    expect(terminal).to receive(:puts).with("TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX").ordered
    string_repeater = StringRepeater.new(terminal)
    string_repeater.run
  end
end