
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
  end
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
  song = find_song
  if song then
    play_song(song)
  else
    invalid_input
  end
end

#
def find_song(input, songs)
  
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