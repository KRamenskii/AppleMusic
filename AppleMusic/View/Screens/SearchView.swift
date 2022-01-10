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
    @ObservedObject var dataSearch = ModelSearchQuery()
    
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
                .padding(.bottom, 70)
            }
            .onAppear {
                dataSearch.addTracks(Track.hotTracks)
                dataSearch.addPage(CategorySearchCell.firstSection)
                dataSearch.addPage(SectionCellsRadio.collectionRadioCells)
                dataSearch.addPage(SectionCellsRadio.collectionStations)
                dataSearch.addPage(SearchSectionCell.searchCollection)
            }
            .navigationTitle("Поиск")
            .navigationBarTitleDisplayMode(.large)
            .padding(.init(top: 0, leading: 20, bottom: 0, trailing: 20))
            .searchable(text: $firstName, prompt: "Ваша Медиатека") {
                ForEach(dataSearch.data.filter {$0.title.hasPrefix(firstName)}, id: \.self) { name in
                    HStack(alignment: .center) {
                        Image(name.nameIconImage)
                            .resizable()
                            .cornerRadius(10)
                            .frame(width: 55, height: 55)
                        VStack {
                            Spacer()
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(name.title)
                                        .font(.system(size: 17))
                                    Text(name.subtitle)
                                        .foregroundColor(.secondary)
                                        .font(.system(size: 13))
                                }
                                Spacer()
                                Button(action: {}) {
                                    Image(systemName: name.type == "track" ? "ellipsis" : "chevron.right")
                                }
                            }
                            Spacer()
                        }
                        .padding(.leading, 5)
                    }
                    .frame(width: UIScreen.main.bounds.width - 40)
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
