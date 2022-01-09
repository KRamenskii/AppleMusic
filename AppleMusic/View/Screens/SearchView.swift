//
//  SearchView.swift
//  AppleMusic
//
//  Created by Kirill on 20.11.2021.
//

import SwiftUI

struct SearchView: View {
    
    private let numberOfColumns = 2
    private let modelSearchCollection = SearchSectionCell.searchCollection
    let spacing: CGFloat = 10
    
    @State var firstName = ""
    @State var titleNextHeader: String = ""
    @State var id: Int = 0
    @State var tag: Int? = nil
    
    var body: some View {
        let columns = Array(repeating: GridItem(.flexible(), spacing: spacing), count: numberOfColumns)
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("Поиск по категориям")
                        .fontWeight(.heavy)
                    LazyVGrid(columns: columns) {
                        ForEach(0..<modelSearchCollection.count) { index in
                            NavigationLink(destination: CategorySearchView(titleNextHeader: $titleNextHeader, id: $id), tag: 1, selection: $tag) {
                                Button {
                                    titleNextHeader = modelSearchCollection[index].title
                                    id = modelSearchCollection[index].id
                                    self.tag = 1
                                } label: {
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
