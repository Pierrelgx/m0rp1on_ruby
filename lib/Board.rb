class Board
    attr_accessor :boardgame, :game_state_variable
  
    def initialize #on crée la structure du board
      @boardgame = { a1: " ", a2: " ", a3: " ", b1: " ", b2: " ", b3: " ", c1: " ", c2: " ", c3: " " }
      @game_state_variable = false
    end
    
    #--------------------------------------------------------------------------------------------

  
    def put_token(symbol, i)
      @boardgame[i] = symbol
      show_board
    end

    #--------------------------------------------------------------------------------------------

  
    def game_state
      if a1 == "O" && a2 == "O" && a3 == "O" || a1 == "X" && a2 == "X" && a3 == "X"
        @game_state_variable = true
      end
  
      if b1 == "O" && b2 == "O" && b3 == "O" || b1 == "X" && b2 == "X" && b3 == "X"
        @game_state_variable = true
      end
  
      if c1 == "O" && c2 == "O" && c3 == "O" || c1 == "X" && c2 == "X" && c3 == "X"
       @game_state_variable = true
      end
  
      if a1 == "O" && b1 == "O" && c1 == "O" || a1 == "X" && b1 == "X" && c1 == "X"
        @game_state_variable = true
      end
  
      if a2 == "O" && b2 == "O" && c2 == "O" || a2 == "X" && b2 == "X" && c2 == "X"
        @game_state_variable = true
      end
  
      if a3 == "O" && b3 == "O" && c3 == "O" || a3 == "X" && b3 == "X" && c3 == "X"
        @game_state_variable = true
      end
  
      if a1 == "O" && b2 == "O" && c3 == "O" || a1 == "X" && b2 == "X" && c3 == "X"
        @game_state_variable = true
      end
  
      if a3 == "O" && b2 == "O" && c1 == "O" || a3 == "X" && b2 == "X" && c1 == "X"
        @game_state_variable = true
      end
    end
  
#--------------------------------------------------------------------------------------------

  
    def show_board
        puts "   1   2   3 "
        puts "A  #{@boardgame[:a1]} | #{@boardgame[:a2]} | #{@boardgame[:a3]} "
        puts "  ---+---+---"
        puts "B  #{@boardgame[:b1]} | #{@boardgame[:b2]} | #{@boardgame[:b3]} "
        puts "  ---+---+---"
        puts "C  #{@boardgame[:c1]} | #{@boardgame[:c2]} | #{@boardgame[:c3]} "
    end
  end