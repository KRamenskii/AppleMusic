//
//  RadioView.swift
//  AppleMusic
//
//  Created by Kirill on 20.11.2021.
//

import SwiftUI

struct RadioView: View {
    private let modelRadioCells = SectionRadioModel().createModelRadio()
    private let modelOurPresentersCells = SectionRadioModel().createModelOurPresenters()
    let rows = [GridItem(.fixed(200))]
    let columns = [GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                Divider()
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        ForEach(modelRadioCells.indices) { index in
                            VStack(alignment: .leading) {
                                Text(modelRadioCells[index].title)
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
                                    .frame(width: UIScreen.main.bounds.width - 50, height: 250)
                            }
                            .padding(.init(top: 0, leading: 15, bottom: 10, trailing: 0))
                        }
                    }
                }
                Divider()
                LazyVGrid(columns: columns) {
                    VStack(alignment: .leading) {
                        Text("Наши ведущие")
                            .font(.title)
                            .fontWeight(.bold)
                        ForEach(modelOurPresentersCells.indices) { index in
                            HStack {
                                Image(modelOurPresentersCells[index].nameIconImage)
                                    .renderingMode(.original)
                                    .resizable()
                                    .cornerRadius(10)
                                    .frame(width: 120, height: 120)
                                VStack(alignment: .leading) {
                                    Text(modelOurPresentersCells[index].title)
                                        .font(.title3)
                                        .fontWeight(.medium)
                                    Text(modelOurPresentersCells[index].subtitle)
                                        .font(.subheadline)
                                        .fontWeight(.regular)
                                        .foregroundColor(Color.secondary)
                                }
                            }
                            if modelOurPresentersCells[index].title != "New Music Daily Radio with Zane Lowe" {
                                Divider()
                            }
                        }
                    }
                    .padding(.init(top: 15, leading: 15, bottom: 0, trailing: 35))
                }
            }
            .navigationTitle(TitleTab.radio)
        }
        .padding(.vertical)
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
