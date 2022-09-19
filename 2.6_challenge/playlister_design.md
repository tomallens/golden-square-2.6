# {{Playlister}} Class Design Recipe

## 1. Describe the Problem

>As a user
>So that I can keep track of my music listening
>I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby

class Playlister
  def initialize
  array goes here
  end

  def add_track(track)
  returns nothing
  end

  def view_list()
    # returns the array of tracks
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
playlist = Playlister.new
playlist.view_list # => []

# 2
playlist.add_track("a song")
playlist.view_list # => "["a song"]

# 3
playlist.add_track("a song")
playlist.add_track("another song")
playlist.view_list # => "["a song", "another song"]

# 4
playlist.add_track("a song")
playlist.add_track("another song")
playlist.add_track("a song")
playlist.view_list # => "["a song", "another song"]

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._