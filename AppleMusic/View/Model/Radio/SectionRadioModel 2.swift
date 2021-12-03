//
//  SectionRadioModel.swift
//  AppleMusic
//
//  Created by Kirill on 30.11.2021.
//

import Foundation

struct SectionRadioCell {
    let title: String
    let titleHeader: String
    let subtitle: String
    let nameIconImage: String
}

struct SectionOurPresentersCell {
    let title: String
    let subtitle: String
    let nameIconImage: String
}

final class SectionRadioModel {
    
    func createModelRadio() -> [SectionRadioCell] {
        return [
            SectionRadioCell(title: TitleRadioCell.hipHopOnRussia, titleHeader: TitleHeaderRadioCell.hipHopOnRussia, subtitle: SubtitleRadioCell.hipHopOnRussia, nameIconImage: NameIconImageRadioCell.hipHopOnRussia),
            SectionRadioCell(title: TitleRadioCell.hitsOnRussia, titleHeader: TitleHeaderRadioCell.hitsOnRussia, subtitle: SubtitleRadioCell.hitsOnRussia, nameIconImage: NameIconImageRadioCell.hitsOnRussia),
            SectionRadioCell(title: TitleRadioCell.chillaut, titleHeader: TitleHeaderRadioCell.chillaut, subtitle: SubtitleRadioCell.chillaut, nameIconImage: NameIconImageRadioCell.chillaut),
            SectionRadioCell(title: TitleRadioCell.hipHop, titleHeader: TitleHeaderRadioCell.hipHop, subtitle: SubtitleRadioCell.hipHop, nameIconImage: NameIconImageRadioCell.hipHop),
            SectionRadioCell(title: TitleRadioCell.popMusic, titleHeader: TitleHeaderRadioCell.popMusic, subtitle: SubtitleRadioCell.popMusic, nameIconImage: NameIconImageRadioCell.popMusic),
            SectionRadioCell(title: TitleRadioCell.danceMusic, titleHeader: TitleHeaderRadioCell.danceMusic, subtitle: SubtitleRadioCell.danceMusic, nameIconImage: NameIconImageRadioCell.danceMusic),
            SectionRadioCell(title: TitleRadioCell.hits, titleHeader: TitleHeaderRadioCell.hits, subtitle: SubtitleRadioCell.hits, nameIconImage: NameIconImageRadioCell.hits)
        ]
    }
    
    func createModelOurPresenters() -> [SectionOurPresentersCell] {
        return [
            SectionOurPresentersCell(title: TitleOurPresentersCell.upNextRadio, subtitle: SubtitleOurPresentersCell.upNextRadio, nameIconImage: NameIconImageOurPresentersCell.upNextRadio),
            SectionOurPresentersCell(title: TitleOurPresentersCell.theZaneLoweShow, subtitle: SubtitleOurPresentersCell.theZaneLoweShow, nameIconImage: NameIconImageOurPresentersCell.theZaneLoweShow),
            SectionOurPresentersCell(title: TitleOurPresentersCell.rapLifeRadio, subtitle: SubtitleOurPresentersCell.rapLifeRadio, nameIconImage: NameIconImageOurPresentersCell.rapLifeRadio),
            SectionOurPresentersCell(title: TitleOurPresentersCell.superbloom, subtitle: SubtitleOurPresentersCell.superbloom, nameIconImage: NameIconImageOurPresentersCell.superbloom),
            SectionOurPresentersCell(title: TitleOurPresentersCell.africaRadio, subtitle: SubtitleOurPresentersCell.africaRadio, nameIconImage: NameIconImageOurPresentersCell.africaRadio),
            SectionOurPresentersCell(title: TitleOurPresentersCell.danceXl, subtitle: SubtitleOurPresentersCell.danceXl, nameIconImage: NameIconImageOurPresentersCell.danceXl),
            SectionOurPresentersCell(title: TitleOurPresentersCell.theEbroShow, subtitle: SubtitleOurPresentersCell.theEbroShow, nameIconImage: NameIconImageOurPresentersCell.theEbroShow),
            SectionOurPresentersCell(title: TitleOurPresentersCell.charlie, subtitle: SubtitleOurPresentersCell.charlie, nameIconImage: NameIconImageOurPresentersCell.charlie),
            SectionOurPresentersCell(title: TitleOurPresentersCell.theMatt, subtitle: SubtitleOurPresentersCell.theMatt, nameIconImage: NameIconImageOurPresentersCell.theMatt),
            SectionOurPresentersCell(title: TitleOurPresentersCell.newMusicDaily, subtitle: SubtitleOurPresentersCell.newMusicDaily, nameIconImage: NameIconImageOurPresentersCell.newMusicDaily)
        ]
    }
}
