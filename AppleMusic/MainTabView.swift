//
//  ContentView.swift
//  AppleMusic
//
//  Created by Kirill on 20.11.2021.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            MediaView()
                .tabItem {
                    VStack {
                        Image(systemName: IconTab.media)
                        Text(TitleTab.media)
                    }
                }
            
            RadioView()
                .tabItem {
                    VStack {
                        Image(systemName: IconTab.radio)
                        Text(TitleTab.radio)
                    }
                }
            
            SearchView()
                .tabItem {
                    VStack {
                        Image(systemName: IconTab.search)
                        Text(TitleTab.search)
                    }
                }
        }
        .accentColor(.pink)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
