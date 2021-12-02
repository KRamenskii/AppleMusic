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

final class SectionModel {
    
    func createModels() -> [Section] {
        return [
            Section(icon: IconCell.playlists, title: TitleCell.playlists),
            Section(icon: IconCell.artists, title: TitleCell.artists),
            Section(icon: IconCell.albums, title: TitleCell.albums),
            Section(icon: IconCell.songs, title: TitleCell.songs),
            Section(icon: IconCell.tvShowAndFilms, title: TitleCell.tvShowAndFilms),
            Section(icon: IconCell.videoClips, title: TitleCell.videoClips),
            Section(icon: IconCell.genres, title: TitleCell.genres),
            Section(icon: IconCell.compilations, title: TitleCell.compilations),
            Section(icon: IconCell.authors, title: TitleCell.authors),
            Section(icon: IconCell.loaded, title: TitleCell.loaded),
            Section(icon: IconCell.homeCollection, title: TitleCell.homeCollection),
        ]
    }
}
