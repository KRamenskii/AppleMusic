//
//  SearchView.swift
//  AppleMusic
//
//  Created by Kirill on 20.11.2021.
//

import SwiftUI

struct SearchView: View {
    @State var firstName = ""
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .searchable(text: $firstName, prompt: "Ваша Медиатека")
            .navigationTitle("Поиск")
        }
        .padding(.vertical)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
