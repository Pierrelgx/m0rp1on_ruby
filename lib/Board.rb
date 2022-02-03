class Board
   
    attr_accessor :a1, :a2, :a3, :b1; :b2, :b3, :c1, :c2, :c3
    @@cases_array = []


    def initialize
        a1 = BoardCase.new("A1")
        a2 = BoardCase.new("A2")
        a3 = BoardCase.new("A3")
        b1 = BoardCase.new("B1")
        b2 = BoardCase.new("B2")
        b3 = BoardCase.new("B3")
        c1 = BoardCase.new("C1")
        c2 = BoardCase.new("C2")
        c3 = BoardCase.new("C3")
        @grid = {a1.case_id => a1.value, a2.case_id => a2.value, a3.case_id => a3.value, b1.case_id => b1.value, b2.case_id => b2.value, b3.case_id => b3.value, b3.case_id => b3.value, c1.case_id => c1.value, c2.case_id => c2.value, c3.case_id => c3.value,}
        @count_turn = 0
    end

  

    def play_turn(player)
        puts
        puts "Quelle case veux-tu jouer mon bichon ?"
        print ">"
        choice = gets.chomp
        @grid[choice]= "#{player.player_value}"
        @count_turn = @count_turn + 1
    end

  def victory?
        
  end



end