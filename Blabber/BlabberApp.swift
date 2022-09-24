//
//  BlabberApp.swift
//  Blabber
//
//  Created by Timothy Kaechle on 5/12/22.
//

import SwiftUI

@main
struct BlabberApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.commands {
          SidebarCommands() // 1
        }
    }
}


