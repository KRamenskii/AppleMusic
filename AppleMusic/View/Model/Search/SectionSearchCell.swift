//
//  SectionSearchCell.swift
//  AppleMusic
//
//  Created by Kirill on 03.01.2022.
//

import Foundation
import SwiftUI

struct SearchSectionCell {
    let id: Int
    let title: String
    let nameIconImage: String
}

extension SearchSectionCell {
    static var searchCollection = [
        SearchSectionCell(id: 1, title: "Новый год", nameIconImage: "picture1"),
        SearchSectionCell(id: 2, title: "Поп на русском", nameIconImage: "picture2"),
        SearchSectionCell(id: 3, title: "Поп", nameIconImage: "picture3"),
        SearchSectionCell(id: 4, title: "Хип-хоп на русском", nameIconImage: "picture4"),
        SearchSectionCell(id: 5, title: "Пространственное звучание", nameIconImage: "picture5"),
        SearchSectionCell(id: 6, title: "Хиты", nameIconImage: "picture6"),
        SearchSectionCell(id: 7, title: "Хорошее настроение", nameIconImage: "picture7"),
        SearchSectionCell(id: 8, title: "Хиты на русском", nameIconImage: "picture8"),
        SearchSectionCell(id: 9, title: "Рок на русском", nameIconImage: "picture9"),
        SearchSectionCell(id: 10, title: "Чарты", nameIconImage: "picture10"),
        SearchSectionCell(id: 11, title: "DJ-миксы", nameIconImage: "picture11"),
        SearchSectionCell(id: 12, title: "Восход", nameIconImage: "picture12"),
        SearchSectionCell(id: 13, title: "Хип-хоп", nameIconImage: "picture13"),
        SearchSectionCell(id: 14, title: "С любовью, Apple music", nameIconImage: "picture14")
    ]
}
