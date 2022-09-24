//
//  ContentView.swift
//  Blabber
//
//  Created by Timothy Kaechle on 5/12/22.
//

import SwiftUI
import WebKit

struct ContentView: View {
  var body: some View {
    NavigationView{
      VStack{
        NavigationList()
      }
      VStack{
        MainPanel()
      }
    }
  }
}

struct NavigationList: View {
  var home: URL? = URL(string: "https://slack.com/workspace-signin")

  var hardwareWordle: String = """
                               document.querySelector(".mainContent-20q_Hp").click();
                               """

  var body: some View {
    List {
      Section(header: Text("the og").font(Font.system(.body).smallCaps())) {
        Label("hardware", systemImage: "number")
        Label("wholesome", systemImage: "number")
        Label("newsinfotainment", systemImage: "number")
        Label("selfies-n-stuff", systemImage: "number")
        Label("dabbin-til-dawn", systemImage: "number")
        Label("música", systemImage: "number")
      }
      Section(header: Text("extra mayo").font(Font.system(.body).smallCaps())) {
        NavigationLink(destination: WebView(data: WebViewData(url: home!))) {
          Label("wordle", systemImage: "number")
        }

        Label("stonks", systemImage: "number")
        Label("kryptonight", systemImage: "number")
        Label("shitposting", systemImage: "number")
      }
      Section(header: Text("entrilo").font(Font.system(.body).smallCaps())) {
        Label("ravecave", systemImage: "speaker.wave.3")
        Label("gamecave", systemImage: "speaker.wave.3")
        Label("exchange-support", systemImage: "speaker.wave.3")
      }
    }.frame(width: 150)
  }
}


// Web View

struct MainPanel: View {
  var home: URL? = URL(string: "https://slack.com/workspace-signin")
  var body: some View {
    WebView(data: WebViewData(url: self.home!))
  }
}

// Preview Provider

struct CircleImage_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ContentView()
    }
  }
}
