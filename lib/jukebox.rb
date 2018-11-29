songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |ele, idx| puts "#{idx + 1}. #{ele}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  request = gets.chomp
  songs.each_with_index do |song, idx|
    # this is the one line if else statement condition? true : false
    puts (request == song || request == (idx + 1).to_s) ? "Playing #{song}" : "Invalid input, please try again"
    # if request == song || request == idx + 1
    #   puts "Playing #{song}"
    # else
    #   puts "Invalid input, please try again"
    # end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help # calling help to show available commands
  while true
    puts "Please enter a command:"
    command = gets.chomp

    case command
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
        break
    end
  end
end
