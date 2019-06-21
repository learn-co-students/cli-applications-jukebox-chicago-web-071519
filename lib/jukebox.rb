def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end



def list(songs)
  songs.each_with_index {|song, index| puts "#{index + 1}. #{song}"}
end



def play(songs)
  puts "Please enter a song name or number:"
  listener_choice = gets.chomp
  songs_list = {}
  songs.each_with_index {|song, index| songs_list[index + 1] = song }
  songs_list.each do |index, song|
    if listener_choice == index.to_s || listener_choice == song
      puts "Playing #{song}"
      return
    else
      puts "Invalid input, please try again"
      return
    end
  end
end 
  


def exit_jukebox
  puts "Goodbye"
end



def run(songs)
  help
  command = nil
  while command != "exit"
    puts "Please enter a command:"
    command = gets.chomp
    if command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "help"
      help
    end
  end
  exit_jukebox
end