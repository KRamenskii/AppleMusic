//
//  PlayerView.swift
//  AppleMusic
//
//  Created by Kirill on 20.11.2021.
//

import SwiftUI

struct PlayerView: View {
    @State var isTappedPlay: Bool = false
    @State var isTappedNext: Bool = false
    
    var body: some View {
        HStack {
            Image("img_for_player")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding(.init(top: 5, leading: 15, bottom: 5, trailing: 0))
            Text("РИТМ ХЛОП")
                .font(.title3)
            Spacer()
            Button(action: tapPlayButton) {
                Image(systemName: isTappedPlay ? "pause.fill" : "play.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.black)
            }
            Button(action: tapNextButton) {
                Image(systemName: "forward.fill")
                    .resizable()
                    .frame(width: 25, height: 20)
                    .foregroundColor(.black)
                    .padding(.init(top: 0, leading: 15, bottom: 0, trailing: 15))
            }
        }
        .frame(height: 70)
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

//MARK: - Action Button
extension PlayerView {
    private func tapPlayButton() {
        isTappedPlay = !isTappedPlay
    }
    
    private func tapNextButton() {
        isTappedNext = !isTappedNext
    }
}
