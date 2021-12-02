//
//  ContentView.swift
//  AppleMusic
//
//  Created by Kirill on 20.11.2021.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        ZStack {
            TabView {
                MediaView()
                    .tabItem {
                        VStack {
                            Image(systemName: "square.stack.fill")
                            Text("Медиатека")
                        }
                    }

                RadioView()
                    .tabItem {
                        VStack {
                            Image(systemName: "dot.radiowaves.left.and.right")
                            Text("Радио")
                        }
                    }

                SearchView()
                    .tabItem {
                        VStack {
                            Image(systemName: "magnifyingglass")
                            Text("Поиск")
                        }
                    }
            }
            .accentColor(.pink)
            PlayerView()
                .padding(.init(top: 0, leading: 0, bottom: 60, trailing: 0))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
