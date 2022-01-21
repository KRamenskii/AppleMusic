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
    @State var id: Int = Metric.defaultId
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
                            .cornerRadius(Metric.cornerRadius)
                            .frame(width: Metric.frameItem, height: Metric.frameItem)
                        VStack {
                            Spacer()
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(name.title)
                                        .font(.system(size: Metric.fontSizeTitle))
                                    Text(name.subtitle)
                                        .foregroundColor(.secondary)
                                        .font(.system(size: Metric.fontSizeSubtitle))
                                }
                                Spacer()
                                Button(action: {}) {
                                    Image(systemName: name.type == "track" ? "ellipsis" : "chevron.right")
                                }
                            }
                            Spacer()
                        }
                        .padding(.leading, Metric.leadingPadding)
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

// MARK: - Constants

extension SearchView {
    enum Metric {
        static let defaultId: Int = 0
        static let cornerRadius: CGFloat = 10
        static let frameItem: CGFloat = 55
        static let fontSizeTitle: CGFloat = 17
        static let fontSizeSubtitle: CGFloat = 13
        static let leadingPadding: CGFloat = 5
    }
}
