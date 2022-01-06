//
//  SectionSearchCell.swift
//  AppleMusic
//
//  Created by Kirill on 03.01.2022.
//

import Foundation
import SwiftUI

struct SearchSectionCell {
    let title: String
    let nameIconImage: String
}

extension SearchSectionCell {
    static var searchCollection = [
        SearchSectionCell(title: "Новый год", nameIconImage: "picture1"),
        SearchSectionCell(title: "Поп на русском", nameIconImage: "picture2"),
        SearchSectionCell(title: "Поп", nameIconImage: "picture3"),
        SearchSectionCell(title: "Хип-хоп на русском", nameIconImage: "picture4"),
        SearchSectionCell(title: "Пространственное звучание", nameIconImage: "picture5"),
        SearchSectionCell(title: "Хиты", nameIconImage: "picture6"),
        SearchSectionCell(title: "Хорошее настроение", nameIconImage: "picture7"),
        SearchSectionCell(title: "Хиты на русском", nameIconImage: "picture8"),
        SearchSectionCell(title: "Рок на русском", nameIconImage: "picture9"),
        SearchSectionCell(title: "Чарты", nameIconImage: "picture10"),
        SearchSectionCell(title: "DJ-миксы", nameIconImage: "picture11"),
        SearchSectionCell(title: "Восход", nameIconImage: "picture12"),
        SearchSectionCell(title: "Хип-хоп", nameIconImage: "picture13"),
        SearchSectionCell(title: "С любовью, Apple music", nameIconImage: "picture14")
    ]
}
