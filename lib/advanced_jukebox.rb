#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => 'C:\Users\kahya\.atom\.learn-ide\home\splendid-chain-4345\jukebox-cli-dumbo-web-121018\audio\Emerald-Park/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => 'C:\Users\kahya\.atom\.learn-ide\home\splendid-chain-4345\jukebox-cli-dumbo-web-121018\audio\Emerald-Park/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '<C:\Users\kahya\.atom\.learn-ide\home\splendid-chain-4345\jukebox-cli-dumbo-web-121018\audio\Emerald-Park/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => 'C:\Users\kahya\.atom\.learn-ide\home\splendid-chain-4345\jukebox-cli-dumbo-web-121018\audio\Emerald-Park/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => 'C:\Users\kahya\.atom\.learn-ide\home\splendid-chain-4345\jukebox-cli-dumbo-web-121018\audio\Emerald-Park/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => 'C:\Users\kahya\.atom\.learn-ide\home\splendid-chain-4345\jukebox-cli-dumbo-web-121018\audio\Emerald-Park/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => 'C:\Users\kahya\.atom\.learn-ide\home\splendid-chain-4345\jukebox-cli-dumbo-web-121018\audio\Emerald-Park/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  songs.each { |k, v| puts k }
end


def play(songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name or number:"
  request = gets.chomp
  songs.each do |k, v|
    k == request ? system %{open #{v}} : "Invalid input, please try again"
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(songs)
  #this method is the same as in jukebox.rb
  help # calling help to show available commands
  while true # this is always going to run because its set to true
    puts "Please enter a command:"
    command = gets.chomp

    case command # our case statement for command which is what the user input
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
    end
  end
end
