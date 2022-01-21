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
    let rows = [GridItem(.fixed(Metric.widthImageFirstSection))]
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
                                    .cornerRadius(Metric.cornerRadius)
                                    .frame(width: Metric.widthImageFirstSection, height: Metric.heightImageFirstSection)
                            }
                        }
                    }
                    .padding(.init(
                        top: Metric.topPaddingFirstSection,
                        leading: Metric.leadingPaddingFirstSection,
                        bottom: Metric.bottomPaddingFirstSection,
                        trailing: Metric.trailingPaddingFirstSection))
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
                                    .cornerRadius(Metric.cornerRadius)
                                    .frame(width: Metric.frameImageSecondSection, height: Metric.frameImageSecondSection)
                                    .padding(.init(
                                        top: Metric.topPaddingImage,
                                        leading: Metric.leadingPaddingImage,
                                        bottom: Metric.bottomPaddingImage,
                                        trailing: Metric.trailingPaddingImage))
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
                            }
                        }
                    }
                    .padding(.init(
                        top: Metric.topPaddingSecondSection,
                        leading: Metric.leadingPaddingSecondSection,
                        bottom: Metric.bottomPaddingSecondSection,
                        trailing: Metric.trailingPaddingSecondSection))
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

// MARK: - Constants

extension RadioView {
    enum Metric {
        static let cornerRadius: CGFloat = 10
        static let widthImageFirstSection: CGFloat = UIScreen.main.bounds.width - 40
        static let heightImageFirstSection: CGFloat = 250
        static let topPaddingFirstSection: CGFloat = 0
        static let leadingPaddingFirstSection: CGFloat = 20
        static let bottomPaddingFirstSection: CGFloat = 10
        static let trailingPaddingFirstSection: CGFloat = 20
        static let frameImageSecondSection: CGFloat = 120
        static let topPaddingSecondSection: CGFloat = 10
        static let leadingPaddingSecondSection: CGFloat = 20
        static let bottomPaddingSecondSection: CGFloat = 70
        static let trailingPaddingSecondSection: CGFloat = 20
        static let topPaddingImage: CGFloat = 7
        static let leadingPaddingImage: CGFloat = 0
        static let bottomPaddingImage: CGFloat = 7
        static let trailingPaddingImage: CGFloat = 0
    }
}
