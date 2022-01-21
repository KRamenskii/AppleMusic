//
//  CategorySearchView.swift
//  AppleMusic
//
//  Created by Kirill on 07.01.2022.
//

import SwiftUI

struct CategorySearchView: View {
    
    var titleNextHeader: String
    var id: Int
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.colorScheme) var colorScheme
    
    let rows = [GridItem(.fixed(Metric.widthTrackCell))]
    
    var modelCategorySearch = CategorySearchCell.firstSection
    var modelHotTracks = Track.hotTracks
    
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                // MARK: - The first section
                
                ScrollView(.horizontal ,showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        let filtered = modelCategorySearch.filter { $0.id == id }
                        ForEach(filtered.indices) { index in
                            VStack(alignment: .leading) {
                                Divider()
                                Text(filtered[index].firstTitle)
                                    .font(.system(size: Metric.fontSizeHeaderTitleFirstSection))
                                    .fontWeight(.regular)
                                    .foregroundColor(.secondary)
                                Text(filtered[index].secondTitle)
                                    .font(.system(size: Metric.fontSizeTitleFirstSection))
                                    .fontWeight(.regular)
                                    .foregroundColor(.black)
                                Text(filtered[index].thirdTitle)
                                    .font(.system(size: Metric.fontSizeTitleFirstSection))
                                    .fontWeight(.regular)
                                    .foregroundColor(.secondary)
                                Image(filtered[index].nameIconImage)
                                    .resizable()
                                    .renderingMode(.original)
                                    .cornerRadius(Metric.cornerRadius)
                                    .frame(width: Metric.widthTrackCell, height: Metric.heightTrackCell)
                            }
                        }
                    }
                    .padding(.init(top: Metric.verticalPadding, leading: Metric.horizontalPadding, bottom: Metric.verticalPadding, trailing: Metric.horizontalPadding))
                }
                
                // MARK: - The second section
                
                VStack {
                    Divider()
                        .padding(.trailing, Metric.horizontalPadding)
                        .padding(.leading, Metric.horizontalPadding)
                    
                    HStack(alignment: .bottom) {
                        Text("Плейлисты")
                            .font(.title3)
                            .fontWeight(.bold)
                        Spacer()
                        Button(action: {}) {
                            Text("См. все")
                                .font(.system(size: Metric.fontSizeTextButton))
                        }
                    }
                    .padding(.trailing, Metric.horizontalPadding)
                    .padding(.leading, Metric.horizontalPadding)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        let rows = Array(repeating: GridItem(.flexible(minimum: Metric.heightCell), spacing: Metric.spacing), count: Metric.numberOfRows)
                        LazyHGrid(rows: rows) {
                            ForEach(0..<10) {_ in
                                VStack(alignment: .leading) {
                                    Image("nil")
                                        .resizable()
                                        .renderingMode(.original)
                                        .cornerRadius(Metric.cornerRadius)
                                        .frame(width: Metric.widthSquareImage, height: Metric.widthSquareImage)
                                    Text("Name playList")
                                        .font(.system(size: Metric.fontSizeSquareItem))
                                    Text("Apple Music")
                                        .font(.system(size: Metric.fontSizeSquareItem))
                                        .foregroundColor(.secondary)
                                }
                            }
                        }
                        .padding(.init(top: Metric.verticalPadding, leading: Metric.horizontalPadding, bottom: Metric.verticalPadding, trailing: Metric.horizontalPadding))
                    }
                }
                
                // MARK: - The third section
                
                VStack {
                    Divider()
                        .padding(.trailing, Metric.horizontalPadding)
                        .padding(.leading, Metric.horizontalPadding)
                    
                    HStack(alignment: .bottom) {
                        Text("Горячие треки")
                            .font(.title3)
                            .fontWeight(.bold)
                        Spacer()
                        Button(action: {}) {
                            Text("См. все")
                                .font(.system(size: Metric.fontSizeTextButton))
                        }
                    }
                    .padding(.trailing, Metric.horizontalPadding)
                    .padding(.leading, Metric.horizontalPadding)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        let rows = Array(repeating: GridItem(.flexible(minimum: Metric.frameMiniItem)), count: Metric.countMiniItem)
                        LazyHGrid(rows: rows) {
                            ForEach(modelHotTracks.indices) { index in
                                HStack(alignment: .center) {
                                    Image(modelHotTracks[index].nameIconImage)
                                        .resizable()
                                        .cornerRadius(Metric.cornerRadius)
                                        .frame(width: Metric.frameMiniItem, height: Metric.frameMiniItem)
                                    
                                    VStack {
                                        Divider()
                                        Spacer()
                                        HStack {
                                            VStack(alignment: .leading) {
                                                Text(modelHotTracks[index].titleHeader)
                                                    .font(.system(size: Metric.fontSizeTitleMiniItem))
                                                Text(modelHotTracks[index].titleArtist)
                                                    .foregroundColor(.secondary)
                                                    .font(.system(size: Metric.fontSizeSubtitleMiniItem))
                                            }
                                            Spacer()
                                            Button(action: {}) {
                                                Image(systemName: "ellipsis")
                                            }
                                        }
                                        Spacer()
                                    }
                                    .padding(.leading, Metric.leadingPaddingMiniItem)
                                }
                                .frame(width: Metric.widthTrackCell)
                            }
                        }
                        .padding(.init(top: Metric.verticalPadding, leading: Metric.horizontalPadding, bottom: Metric.verticalPadding, trailing: Metric.horizontalPadding))
                    }
                }
                
                // MARK: - Fourth section
                
                VStack {
                    Divider()
                        .padding(.trailing, Metric.horizontalPadding)
                        .padding(.leading, Metric.horizontalPadding)

                    HStack(alignment: .bottom) {
                        Text("Новые релизы")
                            .font(.title3)
                            .fontWeight(.bold)
                        Spacer()
                        Button(action: {}) {
                            Text("См. все")
                                .font(.system(size: Metric.fontSizeTextButton))
                        }
                    }
                    .padding(.trailing, Metric.horizontalPadding)
                    .padding(.leading, Metric.horizontalPadding)

                    ScrollView(.horizontal, showsIndicators: false) {
                        let rows = Array(repeating: GridItem(.flexible(minimum: Metric.heightCell), spacing: Metric.spacing), count: Metric.numberOfRows)
                        LazyHGrid(rows: rows) {
                            ForEach(0..<10) {_ in
                                VStack(alignment: .leading) {
                                    Image("nil")
                                        .resizable()
                                        .renderingMode(.original)
                                        .cornerRadius(Metric.cornerRadius)
                                        .frame(width: Metric.widthSquareImage, height: Metric.widthSquareImage)
                                    Text("Название альбома")
                                        .font(.system(size: Metric.fontSizeSquareItem))
                                    Text("Имя артиста")
                                        .font(.system(size: Metric.fontSizeSquareItem))
                                        .foregroundColor(.secondary)
                                }
                            }
                        }
                        .padding(.init(top: Metric.verticalPadding, leading: Metric.horizontalPadding, bottom: Metric.verticalPadding, trailing: Metric.horizontalPadding))
                    }
                }

                // MARK: - Fifth section

                VStack {
                    Divider()
                        .padding(.trailing, Metric.horizontalPadding)
                        .padding(.leading, Metric.horizontalPadding)

                    HStack(alignment: .bottom) {
                        Text("Плейлисты по артистам")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer()
                        Button(action: {}) {
                            Text("См. все")
                                .font(.system(size: Metric.fontSizeTextButton))
                        }
                    }
                    .padding(.trailing, Metric.horizontalPadding)
                    .padding(.leading, Metric.horizontalPadding)

                    ScrollView(.horizontal, showsIndicators: false) {
                        let rows = Array(repeating: GridItem(.fixed(Metric.heightCell), spacing: Metric.spacing), count: 1)
                        LazyHGrid(rows: rows) {
                            ForEach(0..<10) {_ in
                                VStack(alignment: .leading) {
                                    Image("nil")
                                        .resizable()
                                        .renderingMode(.original)
                                        .cornerRadius(Metric.cornerRadius)
                                        .frame(width: Metric.widthSquareImage, height: Metric.widthSquareImage)
                                    Text("Имя артиста: главное")
                                        .font(.system(size: Metric.fontSizeSquareItem))
                                    Text("Apple Music")
                                        .font(.system(size: Metric.fontSizeSquareItem))
                                        .foregroundColor(.secondary)
                                }
                            }
                        }
                        .padding(.init(top: Metric.verticalPadding, leading: Metric.horizontalPadding, bottom: Metric.bottomPadding, trailing: Metric.horizontalPadding))
                    }
                }
            }
        }
        .navigationTitle(titleNextHeader)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton, trailing: shareButton)
        .background(Color.white)
    }
}

// MARK: - Buttons in NavigationView

extension CategorySearchView {
    
    var backButton: some View {
        Button {
            self.presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "chevron.backward")
        }
    }
    
    var shareButton: some View {
        Button(action: {}) {
            Image(colorScheme == .dark ? "shareButtonDark" : "shareButton")
                .resizable()
                .frame(width: Metric.frameShareButton, height: Metric.frameShareButton)
        }
    }
    
}

// MARK: - Constants

extension CategorySearchView {
    enum Metric {
        static let widthSquareImage: CGFloat = (UIScreen.main.bounds.width - 50) / 2
        static let fontSizeSquareItem: CGFloat = 13
        static let heightCell: CGFloat = (UIScreen.main.bounds.width - 50) / 2 + 50
        static let widthTrackCell: CGFloat = UIScreen.main.bounds.width - 40
        static let heightTrackCell: CGFloat = widthTrackCell * 0.7
        static let numberOfRows = 2
        static let spacing: CGFloat = 10
        static let frameShareButton: CGFloat = 23
        static let horizontalPadding: CGFloat = 20
        static let verticalPadding: CGFloat = 0
        static let bottomPadding: CGFloat = 70
        static let fontSizeTextButton: CGFloat = 13
        static let cornerRadius: CGFloat = 10
        static let fontSizeTitleFirstSection: CGFloat = 18
        static let fontSizeHeaderTitleFirstSection: CGFloat = 11
        static let frameMiniItem: CGFloat = 55
        static let countMiniItem = 4
        static let leadingPaddingMiniItem: CGFloat = 5
        static let fontSizeTitleMiniItem: CGFloat = 17
        static let fontSizeSubtitleMiniItem: CGFloat = 13
    }
}
