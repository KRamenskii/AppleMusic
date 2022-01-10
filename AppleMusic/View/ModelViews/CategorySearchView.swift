//
//  CategorySearchView.swift
//  AppleMusic
//
//  Created by Kirill on 07.01.2022.
//

import SwiftUI

struct CategorySearchView: View {
    
    @Binding var titleNextHeader: String
    @Binding var id: Int
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.colorScheme) var colorScheme
    
    let rows = [GridItem(.fixed(200))]
    let spacing: CGFloat = 10
    let widthSquareImage = (UIScreen.main.bounds.width - 50) / 2
    let numberOfRows = 2
    let heightCell: CGFloat = (UIScreen.main.bounds.width - 50) / 2 + 50
    let widthTrackCell: CGFloat = UIScreen.main.bounds.width - 40
    
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
                                    .font(.caption2)
                                    .fontWeight(.regular)
                                    .foregroundColor(.secondary)
                                Text(filtered[index].secondTitle)
                                    .font(.title2)
                                    .fontWeight(.regular)
                                    .foregroundColor(.black)
                                Text(filtered[index].thirdTitle)
                                    .font(.title3)
                                    .fontWeight(.regular)
                                    .foregroundColor(.secondary)
                                Image(filtered[index].nameIconImage)
                                    .resizable()
                                    .renderingMode(.original)
                                    .cornerRadius(10)
                                    .frame(width: UIScreen.main.bounds.width - 40, height: 250)
                            }
                            .padding(.init(top: 0, leading: 20, bottom: 10, trailing: -20))
                        }
                    }
                }
                
                // MARK: - The second section
                
                VStack {
                    Divider()
                        .padding(.trailing, 20)
                    
                    HStack {
                        Text("Плейлисты")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer()
                        Button(action: {}) {
                            Text("См. все")
                        }
                    }
                    .padding(.trailing, 20)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        let rows = Array(repeating: GridItem(.flexible(minimum: heightCell), spacing: spacing), count: numberOfRows)
                        LazyHGrid(rows: rows) {
                            ForEach(0..<10) {_ in
                                VStack(alignment: .leading) {
                                    Image("nil")
                                        .resizable()
                                        .renderingMode(.original)
                                        .cornerRadius(10)
                                        .frame(width: widthSquareImage, height: widthSquareImage)
                                    Text("Name playList")
                                    Text("Apple Music")
                                }
                            }
                        }
                    }
                }
                .padding(.init(top: 0, leading: 20, bottom: 10, trailing: 0))
                
                // MARK: - The third section
                
                VStack {
                    Divider()
                        .padding(.trailing, 20)
                    
                    HStack {
                        Text("Горячие треки")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer()
                        Button(action: {}) {
                            Text("См. все")
                        }
                    }
                    .padding(.trailing, 20)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        let rows = Array(repeating: GridItem(.flexible(minimum: 55)), count: 4)
                        LazyHGrid(rows: rows) {
                            ForEach(modelHotTracks.indices) { index in
                                HStack(alignment: .center) {
                                    Image(modelHotTracks[index].nameIconImage)
                                        .resizable()
                                        .cornerRadius(10)
                                        .frame(width: 55, height: 55)
                                    
                                    VStack {
                                        Divider()
                                        Spacer()
                                        HStack {
                                            VStack(alignment: .leading) {
                                                Text(modelHotTracks[index].titleHeader)
                                                    .font(.system(size: 17))
                                                Text(modelHotTracks[index].titleArtist)
                                                    .foregroundColor(.secondary)
                                                    .font(.system(size: 13))
                                            }
                                            Spacer()
                                            Button(action: {}) {
                                                Image(systemName: "ellipsis")
                                            }
                                        }
                                        Spacer()
                                    }
                                    .padding(.leading, 5)
                                }
                                .frame(width: widthTrackCell)
                            }
                        }
                    }
                }
                .padding(.init(top: 0, leading: 20, bottom: 10, trailing: 0))
                
                // MARK: - Fourth section
                
                VStack {
                    Divider()
                        .padding(.trailing, 20)

                    HStack {
                        Text("Новые релизы")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer()
                        Button(action: {}) {
                            Text("См. все")
                        }
                    }
                    .padding(.trailing, 20)

                    ScrollView(.horizontal, showsIndicators: false) {
                        let rows = Array(repeating: GridItem(.flexible(minimum: heightCell), spacing: spacing), count: numberOfRows)
                        LazyHGrid(rows: rows) {
                            ForEach(0..<10) {_ in
                                VStack(alignment: .leading) {
                                    Image("nil")
                                        .resizable()
                                        .renderingMode(.original)
                                        .cornerRadius(10)
                                        .frame(width: widthSquareImage, height: widthSquareImage)
                                    Text("Название альбома")
                                    Text("Имя артиста")
                                }
                            }
                        }
                    }
                }
                .padding(.init(top: 0, leading: 20, bottom: 10, trailing: 0))

                // MARK: - Fifth section

                VStack {
                    Divider()
                        .padding(.trailing, 20)

                    HStack {
                        Text("Плейлисты по артистам")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer()
                        Button(action: {}) {
                            Text("См. все")
                        }
                    }
                    .padding(.trailing, 20)

                    ScrollView(.horizontal, showsIndicators: false) {
                        let rows = Array(repeating: GridItem(.fixed(heightCell), spacing: spacing), count: 1)
                        LazyHGrid(rows: rows) {
                            ForEach(0..<10) {_ in
                                VStack(alignment: .leading) {
                                    Image("nil")
                                        .resizable()
                                        .renderingMode(.original)
                                        .cornerRadius(10)
                                        .frame(width: widthSquareImage, height: widthSquareImage)
                                    Text("Имя артиста: главное")
                                    Text("Apple Music")
                                }
                            }
                        }
                    }
                }
                .padding(.init(top: 0, leading: 20, bottom: 80, trailing: 0))
            }
        }
        .navigationTitle(titleNextHeader)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton, trailing: shareButton)
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
                .frame(width: 23, height: 23)
        }
    }
    
}