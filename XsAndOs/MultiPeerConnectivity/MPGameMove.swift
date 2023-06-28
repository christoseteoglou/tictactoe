//
//  MPGameMove.swift
//  XsAndOs
//
//  Created by Christos Eteoglou on 2023-06-27.
//

import Foundation

struct MPGameMove: Codable {
    enum Action: Int, Codable {
        case start, move, reset, end
    }
    let action: Action
    let playerName: String?
    let index: Int?
    
    func data() -> Data? {
        try? JSONEncoder().encode(self)
    }
}
