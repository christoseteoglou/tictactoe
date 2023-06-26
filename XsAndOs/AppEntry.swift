//
//  XsAndOsApp.swift
//  XsAndOs
//
//  Created by Christos Eteoglou on 2023-06-26.
//

import SwiftUI

@main
struct AppEntry: App {
    @StateObject var game = GameService()
    var body: some Scene {
        WindowGroup {
            StartView()
                .environmentObject(game)
        }
    }
}
