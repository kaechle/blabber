//  Toolbar.swift, created by Tim Kaechle on 12/19/22.

import SwiftUI
import SwiftSoup

struct Toolbar: View {
  var body: some View {
    Button("Test") {
      _ = """
                  document.querySelector('container-2o3qEW').
                  """
    }
  }
}

struct Toolbar_Previews: PreviewProvider {
  static var previews: some View {
    Toolbar()
  }
}
