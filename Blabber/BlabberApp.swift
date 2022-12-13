//
//  BlabberApp.swift
//  Blabber
//
//  Created by Tim Kaechle on 5/12/22.
//

import SwiftUI

struct VisualEffectView: NSViewRepresentable {
  let material: NSVisualEffectView.Material
  let blendingMode: NSVisualEffectView.BlendingMode
  
  func makeNSView(context: Context) -> NSVisualEffectView {
    let visualEffectView = NSVisualEffectView()
    visualEffectView.material = material
    visualEffectView.blendingMode = blendingMode
    visualEffectView.state = NSVisualEffectView.State.active
    return visualEffectView
  }
  
  func updateNSView(_ visualEffectView: NSVisualEffectView, context: Context) {
    visualEffectView.material = material
    visualEffectView.blendingMode = blendingMode
  }
}


@available(macOS 13.0, *)
@main
struct BlabberApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
//        .background(VisualEffectView(
//          material: .underWindowBackground,
//          blendingMode: .behindWindow))
    }
    .windowStyle(.hiddenTitleBar)
    .windowToolbarStyle(.automatic)
  }
}
