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
                .font(.system(size: 30
                             ))
            Text("Здесь появися купленная Вами в iTunes Store музыка.")
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .font(.system(size: 20))
        }
    }
}

struct MainLabel_Previews: PreviewProvider {
    static var previews: some View {
        MainLabel()
    }
}
