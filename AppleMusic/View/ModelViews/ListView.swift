//
//  ListView.swift
//  AppleMusic
//
//  Created by Kirill on 20.11.2021.
//

import SwiftUI

struct ListView: View {
    @State var model: [Section] = SectionModel().createModels()
    
    var body: some View {
        List {
            ForEach(model.indices) { index in
                HStack {
                    Image(systemName: model[index].icon)
                        .foregroundColor(.pink)
                        .frame(width: 25, height: 25)
                    Text(model[index].title)
                }
            }
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
