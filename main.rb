require './player'
require './game'

laura = Player.new("Laura1999")
john = Player.new("John2001")
match = Game.new(laura, john)
match.play