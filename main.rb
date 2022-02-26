def self.menu
  puts 'MAIN MENU'.colorize(:yellow)
  puts '1: Enter git command'.colorize(:yellow)
  puts '2: View git config'.colorize(:cyan)
  puts '3: Exit'.colorize(:cyan)
  choice = gets.to_i
  case choice
  when 1
    puts 'Enter git command'.colorize(:green)
    Git.puts_git(gets.strip)
  when 2
    Git.config
  when 3
    exit
  else
    puts 'Invalid choice'.colorize(:red)
  end

  menu
end