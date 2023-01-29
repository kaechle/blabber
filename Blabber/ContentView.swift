//  ContentView.swift, created by Tim Kaechle on 5/12/22.

import SwiftUI
import WebKit

struct ContentView: View {
  var home: URL? = URL(string: "https://discord.com/channels/@me")
  var body: some View {
    VStack {
      WebView(data: WebViewData(url: self.home!))
    }
    .toolbar {

    }
    .frame(
      minWidth: 100,
      idealWidth: 800,
      maxWidth: nil,
      minHeight: 300,
      idealHeight: 600,
      maxHeight: nil,
      alignment: .center)
  }
}
