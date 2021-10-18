// chỉ áp dụng cho class

class Stock {
    static var coinsInStock = 20_000
    static func distribute(coins: Int) -> Int {
        let numberOfDistributedCoins = min(coins, coinsInStock)
        coinsInStock = coinsInStock - numberOfDistributedCoins
        return numberOfDistributedCoins
    }
    static func receive(coins: Int) {
        coinsInStock = coinsInStock + coins
    }
    
}

class GamePlayer {
    var existingCoins: Int

    init(coints: Int) {
        existingCoins = Stock.distribute(coins: coins)
    }

    func win(coins: Int) {
        existingCoins += Stock.distribute(coins: coins)
    }

    deinit { // Huỷ đối tượng 
        print("deinit...")
        Stock.receive(coins: existingCoins)
    }
}

var player: GamePlayer? = GamePlayer(coins: 1200)
print("Existing coins = \(player?.existingCoins)")
player!.win(coins: 150) // ! tức là chắc chắn k nil
print("There are now = \(player?.existingCoins) coins left in the bank")
player = nil

// xem lại video 