import Cocoa

//var greeting = "Hello, playground"

protocol Player {
    func attack()
    
}

class Unit: Player {
    func attack() {
        print ("Unit attacks player")
    }
}

class Game {
    var deligate: Player?
    func startGame() {
        deligate?.attack()
    }
}


var game = Game()
var unit = Unit()
game.deligate = unit

game.startGame()



