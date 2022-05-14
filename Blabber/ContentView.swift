//
//  ContentView.swift
//  Blabber
//
//  Created by Timothy Kaechle on 5/12/22.
//

//func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
//  let webPageDefaultPrefs = WKWebpagePreferences()
//  webPageDefaultPrefs.allowsContentJavaScript = true

//  webView.evaluateJavaScript("document.querySelector(\".wrapper-1_HaEi\").style.display = 'none'; document.querySelector(\".sidebar-1tnWFu\").style.display = 'none';", completionHandler: nil)
//}

// const channels = document.querySelector("Channels")
//
// data-dnd-name="*"

import SwiftUI
import WebKit

// document.querySelector(".mainContent-20q_Hp").click()
//

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
  
  var home: URL? = URL(string: "https://discord.com/channels/419336996117282816/419336996117282818")
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
    }.frame(width: 190)
  }
}


// Web View

struct MainPanel: View {
  var home: URL? = URL(string: "https://discord.com/channels/419336996117282816/419336996117282818")
  var body: some View {
    WebView(data: WebViewData(url: self.home!))
  }
}

// Preview Provider

//struct CircleImage_Previews: PreviewProvider {
//  static var previews: some View {
//    Group {
//      ContentView()
//    }
//  }
//}
