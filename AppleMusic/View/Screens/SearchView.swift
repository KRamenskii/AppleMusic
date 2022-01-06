//
//  SearchView.swift
//  AppleMusic
//
//  Created by Kirill on 20.11.2021.
//

import SwiftUI

struct SearchView: View {
    // MARK: - Properties
    private let numberOfColumns = 2
    private let modelSearchCollection = SearchSectionCell.searchCollection
    let spacing: CGFloat = 10
    
    @State var firstName = ""
    
    var body: some View {
        let columns = Array(repeating: GridItem(.flexible(), spacing: spacing), count: numberOfColumns)
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("Поиск по категориям")
                        .fontWeight(.heavy)
                    LazyVGrid(columns: columns) {
                        ForEach(0..<modelSearchCollection.count) { index in
                            NavigationLink(destination: Text("Hello, World!")) {
                                ZStack(alignment: .bottomLeading) {
                                    Image(modelSearchCollection[index].nameIconImage)
                                        .resizable()
                                        .blur(radius: 3)
                                        .cornerRadius(10)
                                        .frame(height: 130)
                                    Text("\(modelSearchCollection[index].title)")
                                        .fontWeight(.heavy)
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.leading)
                                        .padding(.bottom)
                                        .padding(.leading)
                                }
                            }
                        }
                    }
                }
                .padding(.bottom, 80)
            }
            .navigationTitle("Поиск")
            .navigationBarTitleDisplayMode(.large)
            .padding(.init(top: 0, leading: 20, bottom: 0, trailing: 20))
            .searchable(text: $firstName, placement: .navigationBarDrawer(displayMode: .automatic), prompt: "Ваша Медиатека")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
