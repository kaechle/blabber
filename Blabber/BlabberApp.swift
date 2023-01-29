//  BlabberApp.swift, created by Tim Kaechle on 5/12/22.

import SwiftUI

@available(macOS 13.0, *)
@main
struct BlabberApp: App {
  var body: some Scene {
    WindowGroup {
      NavigationSplitView {
        EmptyView()
      } detail: {
        ContentView()
      }
    }
  }
}
