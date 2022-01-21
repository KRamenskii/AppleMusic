//
//  SectionRadioModel.swift
//  AppleMusic
//
//  Created by Kirill on 30.11.2021.
//

import Foundation

struct SectionCellsRadio {
    let titleHeader: String
    let subtitle: String
    let nameIconImage: String
}

extension SectionCellsRadio {
    static var collectionRadioCells = [
        SectionCellsRadio(titleHeader: "Хип-хоп на русском", subtitle: " ", nameIconImage: "hip-hop-rus"),
        SectionCellsRadio(titleHeader: "Хиты на русском", subtitle: " ", nameIconImage: "hit-rus"),
        SectionCellsRadio(titleHeader: "Чилаут", subtitle: "Электронная медитация.", nameIconImage: "chil"),
        SectionCellsRadio(titleHeader: "Хип-хоп", subtitle: "Идеальные биты и рифмы.", nameIconImage: "hip-hop"),
        SectionCellsRadio(titleHeader: "Поп-музыка", subtitle: "Все топ хиты.", nameIconImage: "pop-music"),
        SectionCellsRadio(titleHeader: "Танцевальная музыка", subtitle: "Современные и будущие хиты.", nameIconImage: "dance-music"),
        SectionCellsRadio(titleHeader: "Хиты", subtitle: "То, что слушают прямо сейчас.", nameIconImage: "hits")
    ]
    
    static var collectionStations = [
        SectionCellsRadio(titleHeader: "Up Next Radio", subtitle: "Apple Music", nameIconImage: "UpNextRadio"),
        SectionCellsRadio(titleHeader: "The Zane Love Show", subtitle: "Apple Music", nameIconImage: "TheZaneLoveShow"),
        SectionCellsRadio(titleHeader: "Rap Life Radio with Ebro Darden", subtitle: "Apple Music", nameIconImage: "RapLifeRadio"),
        SectionCellsRadio(titleHeader: "Superbloom Radio with Travis Mills", subtitle: "Travis Mills", nameIconImage: "Superbloom"),
        SectionCellsRadio(titleHeader: "Africa Now Radio with LootLove", subtitle: "Apple Music", nameIconImage: "AfricaNow"),
        SectionCellsRadio(titleHeader: "danceXL Radio with Anna Lunoe", subtitle: "Apple Music", nameIconImage: "danceXL"),
        SectionCellsRadio(titleHeader: "The Ebro Show", subtitle: "Эбро Дарден", nameIconImage: "TheEbroShow"),
        SectionCellsRadio(titleHeader: "Charlie Sloth Rap Show", subtitle: "Charli Sloth", nameIconImage: "Charli"),
        SectionCellsRadio(titleHeader: "The Matt Wilkison Show", subtitle: "Мэтт Уилкинсон", nameIconImage: "TheMatt"),
        SectionCellsRadio(titleHeader: "New Music Daily Radio with Zane Lowe", subtitle: "Apple Music", nameIconImage: "NewMusicDaily")
    ]
}
