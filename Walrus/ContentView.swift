//
//  ContentView.swift
//  Walrus
//
//  Created by brad on 8/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        WebView(request: URLRequest(url: URL(string: "https://app.thespaghettidetective.com/printers/shared/f570629361bd0f2d107f93fa8f680bb9fe93/")!))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
