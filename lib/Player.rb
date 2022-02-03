require 'bundler'
Bundler.require

class Player
    attr_accessor :name, :symbol
    @@all_players = []

    def initialize(name, symbol)
        @name = gest.chomp
        @symbol = gest.chomp
    end



end

binding.pry