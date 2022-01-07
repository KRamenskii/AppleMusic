//
//  ContentView.swift
//  AppleMusic
//
//  Created by Kirill on 20.11.2021.
//

import SwiftUI

struct MainTabView: View {
    
    @State var isExpand = false
    @Namespace var animation
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
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
            
            PlayerView(isExpand: $isExpand, animation: animation)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
