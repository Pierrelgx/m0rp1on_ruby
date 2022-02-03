class Player # on crée la classe Player, ne contient que les infos sur les joueurs (points de vie, nom, attributs etc.)
  attr_accessor :name, :symbol

  def initialize(symbol = "#")
    @name = "###"
    @symbol = symbol
  end

end