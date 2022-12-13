//  ContentView.swift
//  Created by Tim Kaechle on 12/12/22.

import SwiftUI
import WebKit

//@available(macOS 13.0, *)
//struct ContentView: View {
//  var home: URL? = URL(string: "https://linear.app/madebythebeach/team/WRITE/active")
//  var body: some View {
//    ViewThatFits {
//      Text("What the fuck")
//    }
//    //    WebView(data: WebViewData(url: self.home!))
//  }
//}

struct ContentView: View {
  var home: URL? = URL(string: "https://linear.app/madebythebeach/team/WRITE/active")
  var body: some View {
    VStack {
      Text("Blabber").padding(.top, 2).ignoresSafeArea()
      WebView(data: WebViewData(url: self.home!))
        .ignoresSafeArea()
    }
    .frame(
      minWidth: 100,
      idealWidth: 800,
      maxWidth: nil,
      minHeight: 300,
      idealHeight: 600,
      maxHeight: nil,
      alignment: .center)
    .ignoresSafeArea()
  }
}
