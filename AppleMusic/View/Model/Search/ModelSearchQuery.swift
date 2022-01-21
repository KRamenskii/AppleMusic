//
//  ModelSearchQuery.swift
//  AppleMusic
//
//  Created by Kirill on 09.01.2022.
//

import Foundation

struct ModelDataSearchQuery: Hashable {
    let type: String
    let title: String
    let subtitle: String
    let nameIconImage: String
}

class ModelSearchQuery: ObservableObject {
    @Published var data: Set<ModelDataSearchQuery> = []
}

extension ModelSearchQuery {
    
    func addTracks(_ array: [Track]) {
        for index in 0..<array.count {
            let element = ModelDataSearchQuery(type: "track", title: array[index].titleHeader, subtitle: array[index].titleArtist, nameIconImage: array[index].nameIconImage)
            data.insert(element)
        }
    }
    
    func addPage(_ array: [CategorySearchCell]) {
        for index in 0..<array.count {
            let element = ModelDataSearchQuery(type: "categorySearchPage", title: array[index].secondTitle, subtitle: array[index].thirdTitle, nameIconImage: array[index].nameIconImage)
            data.insert(element)
        }
    }
    
    func addPage(_ array: [SearchSectionCell]) {
        for index in 0..<array.count {
            let element = ModelDataSearchQuery(type: "sectionSearchPage", title: array[index].title, subtitle: "Категория", nameIconImage: array[index].nameIconImage)
            data.insert(element)
        }
    }
    
    func addPage(_ array: [SectionCellsRadio]) {
        for index in 0..<array.count {
            let element = ModelDataSearchQuery(type: "sectionRadioPage", title: array[index].titleHeader, subtitle: array[index].subtitle, nameIconImage: array[index].nameIconImage)
            data.insert(element)
        }
    }
}
