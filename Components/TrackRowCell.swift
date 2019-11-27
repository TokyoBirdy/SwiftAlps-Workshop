//
//  TrackRowCell.swift
//  Components
//
//  Created by ceciliah on 2019-11-19.
//  Copyright © 2019 Humlan. All rights reserved.
//

import SwiftUI
import ColorToken
import FontToken

public struct TrackRowCell: View {
    let heart: CTFont
    let cat: CTFont

    public init() {
        let heartFont = FontToken.heartFont()
        let catFont = FontToken.catFont()
        heart = unsafeBitCast(self.heartFont, to: CTFont.self)
        cat = unsafeBitCast(self.catFont, to: CTFont.self)
        heartFont?.release()
        catFont?.release()
    }

    let image = ("🎻" as NSString).image(attributes: [.font: UIFont.systemFont(ofSize: 20)], size: CGSize(width: 44, height: 44))
    public var body: some View {
        HStack {
            image.map { Image(uiImage: $0) }
            VStack {
                Text("三線の花").foregroundColor(Color(ColorToken.小豆色)).font(Font(heart))
                Text("BEGIN").font(Font(cat))

            }
        }
    }
}

struct TrackRowCell_Previews: PreviewProvider {
    static var previews: some View {
        TrackRowCell()
    }
}
