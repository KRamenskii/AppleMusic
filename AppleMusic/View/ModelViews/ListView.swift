//
//  ListView.swift
//  AppleMusic
//
//  Created by Kirill on 20.11.2021.
//

import SwiftUI

struct ListView: View {
    @State private var model: [Section] = Section.categoriesMediaPage
    @State private var selectedItem = Set<String>()
    
    var body: some View {
        List(selection: $selectedItem) {
            ForEach(model.indices) { index in
                HStack {
                    Image(systemName: model[index].icon)
                        .foregroundColor(.pink)
                        .frame(width: 25, height: 25)
                    Text(model[index].title)
                }
            }
            .onMove(perform: {_,_ in })
        }
        .listStyle(.grouped)
        .onAppear() {
            UITableView.appearance().backgroundColor = UIColor.clear
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
