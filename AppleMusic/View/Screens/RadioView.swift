//
//  RadioView.swift
//  AppleMusic
//
//  Created by Kirill on 20.11.2021.
//

import SwiftUI

struct RadioView: View {
    private let modelRadioCells = SectionCellsRadio.collectionRadioCells
    private let modelCollectionStations = SectionCellsRadio.collectionStations
    let rows = [GridItem(.fixed(200))]
    let columns = [GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        ForEach(modelRadioCells.indices) { index in
                            VStack(alignment: .leading) {
                                Divider()
                                Text("ИЗБРАННАЯ РАДИОСТАНЦИЯ")
                                    .font(.caption2)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color.secondary)
                                Text(modelRadioCells[index].titleHeader)
                                    .font(.title2)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color.black)
                                Text(modelRadioCells[index].subtitle)
                                    .font(.title3)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color.secondary)
                                Image(modelRadioCells[index].nameIconImage)
                                    .renderingMode(.original)
                                    .resizable()
                                    .cornerRadius(10)
                                    .frame(width: UIScreen.main.bounds.width - 40, height: 250)
                            }
                        }
                    }
                    .padding(.init(top: 0, leading: 20, bottom: 10, trailing: 20))
                }
                LazyVGrid(columns: columns) {
                    VStack(alignment: .leading) {
                        Divider()
                        Text("Станции")
                            .font(.title)
                            .fontWeight(.bold)
                        ForEach(modelCollectionStations.indices) { index in
                            HStack {
                                Image(modelCollectionStations[index].nameIconImage)
                                    .renderingMode(.original)
                                    .resizable()
                                    .cornerRadius(10)
                                    .frame(width: 120, height: 120)
                                    .padding(.init(top: 7, leading: 0, bottom: 7, trailing: 0))
                                VStack(alignment: .leading) {
                                    Spacer()
                                    Text(modelCollectionStations[index].titleHeader)
                                        .font(.title3)
                                        .fontWeight(.medium)
                                    Text(modelCollectionStations[index].subtitle)
                                        .font(.subheadline)
                                        .fontWeight(.regular)
                                        .foregroundColor(Color.secondary)
                                    Spacer()
                                    if modelCollectionStations[index].titleHeader != "New Music Daily Radio with Zane Lowe" {
                                        Divider()
                                    }
                                }
                                .padding(.leading, 10)
                            }
                        }
                    }
                    .padding(.init(top: 10, leading: 20, bottom: 80, trailing: 20))
                }
            }
            .navigationTitle("Радио")
        }
        .padding(.vertical)
        .ignoresSafeArea()
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
