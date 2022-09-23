class StringRepeater
  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts "Hello. I will repeat a string many times."
    @terminal.puts "Please enter a string"
    stringtorepeat = @terminal.gets
    @terminal.puts "Please enter a number of repeats"
    num_of_repeats = @terminal.gets
    @terminal.puts "Here is your result:"
    @terminal.puts "#{stringtorepeat * num_of_repeats}"
  end
end

# string_repeater = StringRepeater.new(Kernel)
# string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX