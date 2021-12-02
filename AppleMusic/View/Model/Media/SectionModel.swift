//
//  SectionModel.swift
//  AppleMusic
//
//  Created by Kirill on 20.11.2021.
//

import Foundation

struct Section {
    let icon: String
    let title: String
}

extension Section {
    static var categoriesMediaPage = [
        Section(icon: "Плейлисты", title: "music.note.list"),
        Section(icon: "Артисты", title: "music.mic"),
        Section(icon: "Альбомы", title: "square.stack"),
        Section(icon: "Песни", title: "music.note"),
        Section(icon: "Телешоу и фильмы", title: "tv"),
        Section(icon: "Видеоклипы", title: "music.note.tv"),
        Section(icon: "Жанры", title: "guitars"),
        Section(icon: "Сборники", title: "person.2.crop.square.stack"),
        Section(icon: "Авторы", title: "music.quarternote.3"),
        Section(icon: "Загружено", title: "arrow.down.circle"),
        Section(icon: "Домашняя коллекция", title: "music.note.house")
    ]
}
