//
//  MainLabel.swift
//  AppleMusic
//
//  Created by Kirill on 20.11.2021.
//

import SwiftUI

struct MainLabel: View {
    var body: some View {
        VStack {
            Text("Ищете свою музыку?")
                .fontWeight(.bold)
                .font(.system(size: Metric.fontSizeTitle))
            Text("Здесь появися купленная Вами в iTunes Store музыка.")
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .lineLimit(Metric.lineLimit)
                .font(.system(size: Metric.fontSizeSubtitle))
                .frame(width: Metric.width)
        }
    }
    
    // MARK: - Constants
    
    enum Metric {
        static let fontSizeTitle: CGFloat = 23
        static let fontSizeSubtitle: CGFloat = 18
        static let width: CGFloat = 300
        static let lineLimit = 2
    }
}

struct MainLabel_Previews: PreviewProvider {
    static var previews: some View {
        MainLabel()
    }
}
