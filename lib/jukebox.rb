
#
def run(songs)
  greet_user
  process_main_input(get_user_input, songs)
end

#
def greet_user
  puts "Please enter a command:"
end

#
def get_user_input
  gets.strip
end

#
def process_main_input(input, songs)
  case input
    when "help"
      help
    when "play"
      play(songs)
    when "list"
      list(songs)
    when "exit"
      exit_jukebox
    else
      invalid_input
  end
end  

#
def invalid_input
  puts "Invalid input, please try again"
end

#
def help
  puts  "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

#
def play(songs)
  play_prompt
  process_play_input(get_user_input, songs)
end

#
def play_prompt
  puts "Please enter a song name or number:"
end

#
def process_play_input(input, songs)
  song = find_song(input, songs)

  if song then
    play_song(song)
  else
    invalid_input
  end
end

#
def find_song(input, songs)
  number = input.to_i
  if number then
    puts "we have a number: #{number}"
    find_song_by_number(number, songs)
  else
    find_song_by_name(input, songs)
  end
end

#
def find_song_by_number(number, songs)
  if number > 0 && number <= songs.length then
    songs[number-1]
  end
  nil
end

#
def find_song_by_name(name, songs)
  songs.find do |song|
    song == name
  end
end

#
def play_song(song)
  puts "Playing #{song}"
end

#
def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

#
def exit_jukebox
  puts "Goodbye"
end