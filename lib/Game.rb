require_relative 'Player'
require_relative 'Board'
#chemin absolu : si je passe mon jeu à mon ami, il doit avoir le même chemin d'accès à mon jeu
#chemin relative : cherche player par rapport au 1er dossier de mon jeu (à partir de la racine de mon jeu)

class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :joueur1, :joueur2, :board
  attr_accessor :sablier, :sabliermax

  def initialize

    @board = Board.new

    @joueur1 = Player.new("X") # il faut mettre un @ à joueur1 dans mes méthodes si c'est un attr_Accessor

    @joueur2 = Player.new("O")

    @sablier = 1
    @sabliermax = 6

  end

  def turn
    first_presentation
    game_loop = true # début de boucle
    while game_loop && @board.game_state_variable == false
      puts "ROUND N°#{sablier} "
      play_turn(@joueur1.symbol)
      play_turn(@joueur2.symbol)
      @sablier +=1
      if @sablier == @sabliermax || @board.game_state_variable == true
        game_loop = false #fin de boucle avec le false
        puts "Match nul"
      end
    end
  end

  def new_round
    new_game_loop = false
    play_turn(@joueur1.symbol)
    play_turn(@joueur2.symbol)
    new_game_loop
  end

  def play_turn(symbol) #le joueur choisi dans quelle case il veut mettre son symbole
    puts "Dans quelle case veux-tu jouer (par exemple: a1)?"
    coordonnee = gets.chomp.downcase.to_sym
    @board.put_token(symbol, coordonnee)
  end


  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end

  def first_presentation
    puts "--------------------------------------------------------"
    puts "\n"
    puts "\n"
    puts "BIENVENUE AU JEU DU MORPION"


    puts "             ...
                 ;::::;
               ;::::; :;
             ;:::::'   :;
            ;:::::;     ;.
           ,:::::'       ;           OOO\
           ::::::;       ;          OOOOO\
           ;:::::;       ;         OOOOOOOO
          ,;::::::;     ;'         / OOOOOOO
        ;:::::::::`. ,,,;.        /  / DOOOOOO
      .';:::::::::::::::::;,     /  /     DOOOO
     ,::::::;::::::;;;;::::;,   /  /        DOOO
    ;`::::::`'::::::;;;::::: ,#/  /          DOOO
    :`:::::::`;::::::;;::: ;::#  /            DOOO
    ::`:::::::`;:::::::: ;::::# /              DOO
    `:`:::::::`;:::::: ;::::::#/               DOO
     :::`:::::::`;; ;:::::::::##                OO
     ::::`:::::::`;::::::::;:::#                OO
     `:::::`::::::::::::;'`:;::#                O
      `:::::`::::::::;' /  / `:#
       ::::::`:::::;'  /  /   `#"
    puts "\n"  
    puts "\n"
    puts "--------------------------------------------------------"
    puts "\n"

    puts "Quel est ton prénom joueur n°1?"
    name = gets.chomp
    @joueur1.name = name

    puts "Quel est ton prénom joueur n°2?"
    name = gets.chomp
    @joueur2.name = name

    puts "Bienvenue #{@joueur1.name}, tu joues avec #{@joueur1.symbol} et #{@joueur2.name}, tu joues avec #{@joueur2.symbol}\n"
    puts "#{@joueur1.name} commence en premier"
  end

end