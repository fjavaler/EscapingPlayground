import UIKit
import PlaygroundSupport
import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      ZStack {
        Color(.orange)
          .ignoresSafeArea()
        VStack {
          Button("Button".uppercased()) {
            print("Button pressed!")
          }
          .padding()
          .background(Color.blue)
          .foregroundColor(.white)
          .cornerRadius(10.0)
        }
        .navigationTitle("Test View")
      }
    }
  }
}

PlaygroundPage.current.setLiveView(ContentView())
