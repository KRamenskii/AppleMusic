//
//  SectionModel.swift
//  AppleMusic
//
//  Created by Kirill on 20.11.2021.
//

import Foundation

struct Section {
    let title: String
    let icon: String
}

extension Section {
    static var categoriesMediaPage = [
        Section(title: "Плейлисты", icon: "music.note.list"),
        Section(title: "Артисты", icon: "music.mic"),
        Section(title: "Альбомы", icon: "square.stack"),
        Section(title: "Песни", icon: "music.note"),
        Section(title: "Телешоу и фильмы", icon: "tv"),
        Section(title: "Видеоклипы", icon: "music.note.tv"),
        Section(title: "Жанры", icon: "guitars"),
        Section(title: "Сборники", icon: "person.2.crop.square.stack"),
        Section(title: "Авторы", icon: "music.quarternote.3"),
        Section(title: "Загружено", icon: "arrow.down.circle"),
        Section(title: "Домашняя коллекция", icon: "music.note.house")
    ]
}
