//
//  MediaView.swift
//  AppleMusic
//
//  Created by Kirill on 20.11.2021.
//

import SwiftUI

struct MediaView: View {
    @State var isEditing: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                if isEditing {
                    ListView()
                    Spacer()
                    PlayerView()
                } else {
                    Spacer()
                    MainLabel()
                    Spacer()
                    PlayerView()
                }
            }
            .navigationTitle(TitleTab.media)
            .environment(\.editMode, .constant(self.isEditing ? EditMode.active : EditMode.inactive))
            .toolbar {
                ToolbarItem() {
                    Button {
                        self.isEditing.toggle()
                    } label: {
                        Text(isEditing ? "Готово" : "Править")
                    }
                }
            }
        }
        .padding(.vertical)
    }
}

struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView()
    }
}
