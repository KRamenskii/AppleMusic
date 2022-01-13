//
//  SearchView.swift
//  AppleMusic
//
//  Created by Kirill on 20.11.2021.
//

import SwiftUI
import UIKit

struct CollectionView: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> some UIViewController {

        return SearchViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {

    }
}

struct SearchView: View {

    @State var searchText = ""
    @State var titleNextHeader: String = ""
    @State var id: Int = 0
    @State var tag: Int? = nil
    @ObservedObject var dataSearch = ModelSearchQuery()

    var body: some View {
        NavigationView {
            CollectionView()
            .onAppear {
                dataSearch.addTracks(Track.hotTracks)
                dataSearch.addPage(CategorySearchCell.firstSection)
                dataSearch.addPage(SectionCellsRadio.collectionRadioCells)
                dataSearch.addPage(SectionCellsRadio.collectionStations)
                dataSearch.addPage(SearchSectionCell.searchCollection)
            }
            .navigationTitle("Поиск")
            .navigationBarTitleDisplayMode(.large)
            .searchable(text: $searchText, prompt: "Ваша Медиатека") {
                ForEach(dataSearch.data.filter {$0.title.hasPrefix(searchText)}, id: \.self) { name in
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
