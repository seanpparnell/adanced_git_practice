require 'colorize'
require_relative 'git'

class Main
  include Git

  def self.menu
    puts 'MAIN MENU'.colorize(:red)
    puts '1: Enter git command'.colorize(:yellow)
    puts '2: Exit'.colorize(:red)
    choice = gets.to_i
    case choice
    when 1
      puts 'Enter git command'.colorize(:green)
      Git.git_cmd(gets.strip)
    when 2
      exit
    else
      puts 'Invalid choice'.colorize(:yellow)
    end

    menu
  end

end

Main.menu