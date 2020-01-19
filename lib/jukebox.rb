
#
def run(songs)
  greet_user
  process_user_input(get_user_input)
end

#
def greet_user
  puts "Please enter a command:"
end

#
def get_user_input
  gets.chomp
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
  puts "Please enter a song name or number:"
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