//
//  GameSquare.swift
//  XsAndOs
//
//  Created by Christos Eteoglou on 2023-06-26.
//

import SwiftUI

struct GameSquare  {
    var id: Int
    var player: Player?
    
    var image: Image {
        if let player = player {
            return player.gamePiece.image
        } else {
            return Image("none")
        }
    }
    
    static var reset: [GameSquare] {
        var squares = [GameSquare]()
        for index in 1...9 {
            squares.append(GameSquare(id: index))
        }
        return squares
    }
}
