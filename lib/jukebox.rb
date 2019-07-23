=begin
# say hello to user
def say_hello(name)
  "Hi #{name}!"
end

puts "Enter your name:"
users_name = gets.chomp

puts say_hello(users_name)
=end

# actions if user types 'help'
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

# actions if user types 'list'
def list(songs)
  songs.each_with_index { |song, index| puts "#{index+1}. #{song}" }
end

# actions if user types 'play'
def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  if song_choice.to_i > 0 && song_choice.to_i < 9
    puts "Playing #{songs[song_choice.to_i-1]}"
  elsif songs.include?(song_choice)
    puts song_choice
  else
    puts "Invalid input, please try again"
  end
end

# actions if user types 'exit'
def exit_jukebox
  puts "Goodbye"
end

# model using the jukebox
def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  until input == "exit"
    if input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "help"
      help
    else
      puts "Invalid command"
    end
    puts "Please enter a command:"
    input = gets.chomp
  end
  exit_jukebox
end
