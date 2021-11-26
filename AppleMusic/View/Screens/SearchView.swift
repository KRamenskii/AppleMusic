//
//  SearchView.swift
//  AppleMusic
//
//  Created by Kirill on 20.11.2021.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView {
            ZStack {
            }
            .navigationTitle(TitleTab.search)
        }
        .padding(.vertical)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
