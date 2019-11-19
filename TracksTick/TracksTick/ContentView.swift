//
//  ContentView.swift
//  TracksTick
//
//  Created by ceciliah on 2019-11-19.
//  Copyright © 2019 Humlan. All rights reserved.
//

import SwiftUI
import Components

struct ContentView: View {

    let image = ("🎶").image(attributes: [.font: UIFont.systemFont(ofSize: 20)], size: CGSize(width: 44, height: 44))

    var body: some View {
        Section(header: image.map { Image(uiImage: $0) }) {
            List(0..<10) {_ in
                TrackRowCell()
            }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
