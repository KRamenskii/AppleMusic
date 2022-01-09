//
//  CategorySearchCell.swift
//  AppleMusic
//
//  Created by Kirill on 09.01.2022.
//

import Foundation

struct CategorySearchCell {
    let id: Int
    let firstTitle: String
    let secondTitle: String
    let thirdTitle: String
    let nameIconImage: String
}

struct Track {
    let titleHeader: String
    let titleArtist: String
    let nameIconImage: String
}

extension CategorySearchCell {
    static var firstSection = [
        CategorySearchCell(id: 1, firstTitle: "ТОЛЬКО В APPLE MISUC", secondTitle: "НА ПРАЗДНИЧНОЙ НОТЕ 2021", thirdTitle: "Apple Music", nameIconImage: "nil"),
        CategorySearchCell(id: 1, firstTitle: "ЭКСКЛЮЗИВНЫЙ DJ-МИКС", secondTitle: "NYE 2022 (DJ Mix)", thirdTitle: "Kedr Livanskiy", nameIconImage: "nil"),
        CategorySearchCell(id: 1, firstTitle: "ИЗБРАННЫЙ РЕЛИЗ", secondTitle: "Thcalovskii: The Nutracker", thirdTitle: "Берлинский филармонический окрестр", nameIconImage: "nil"),
        CategorySearchCell(id: 1, firstTitle: "ИЗБРАННЫЙ ПЛЕЙЛИСТ", secondTitle: "Вместе теплее", thirdTitle: "Apple Music", nameIconImage: "nil"),
        CategorySearchCell(id: 1, firstTitle: "С ЛЮБОВЬЮ, APPLE MUSIC", secondTitle: "Зимние хиты", thirdTitle: "Apple Music Новый год", nameIconImage: "nil"),
        
        CategorySearchCell(id: 2, firstTitle: "ИЗБРАННЫЙ ПЛЕЙЛИСТ", secondTitle: "Поп-волна 2021", thirdTitle: "Apple Music Поп на русском", nameIconImage: "nil"),
        CategorySearchCell(id: 2, firstTitle: "НОВЫЙ ЕР", secondTitle: "Только мы - ЕР", thirdTitle: "МЫ", nameIconImage: "nil"),
        CategorySearchCell(id: 2, firstTitle: "НОВЫЙ ЕР", secondTitle: "Я ЭТО Я - ЕР", thirdTitle: "Антоха МС", nameIconImage: "nil"),
        CategorySearchCell(id: 2, firstTitle: "ОБНОВЛЁННЫЙ ПЛЕЙЛИСТ", secondTitle: "Поп-волна", thirdTitle: "Apple Music Поп на русском", nameIconImage: "nil"),
        CategorySearchCell(id: 2, firstTitle: "НОВЫЙ АЛЬБОМ", secondTitle: "Любовь. Слёзы. Движ.", thirdTitle: "Анет Сай", nameIconImage: "nil"),
        
        CategorySearchCell(id: 3, firstTitle: "НОВЫЙ АЛЬБОМ", secondTitle: "Dawn FM", thirdTitle: "Thw Weeknd", nameIconImage: "nil"),
        CategorySearchCell(id: 3, firstTitle: "ИЗБРАННЫЙ ПЛЕЙЛИСТ", secondTitle: "Поп-волна 2021", thirdTitle: "Apple Music Поп на русском", nameIconImage: "nil"),
        CategorySearchCell(id: 3, firstTitle: "НОВЫЙ ЕР", secondTitle: "Только мы - ЕР", thirdTitle: "МЫ", nameIconImage: "nil"),
        CategorySearchCell(id: 3, firstTitle: "НОВЫЙ АЛЬБОМ", secondTitle: "Universe - The 3rd Album", thirdTitle: "NCT", nameIconImage: "nil"),
        CategorySearchCell(id: 3, firstTitle: "ОБНОВЛЁННЫЙ ПЛЕЙЛИСТ", secondTitle: "Новинки поп-музыки", thirdTitle: "Apple Music Поп", nameIconImage: "nil"),
        
        CategorySearchCell(id: 4, firstTitle: "НОВЫЙ АЛЬБОМ", secondTitle: "Выход в город", thirdTitle: "Noize MC", nameIconImage: "nil"),
        CategorySearchCell(id: 4, firstTitle: "ИЗБРАННЫЙ АЛЬБОМ", secondTitle: "BANDANA I", thirdTitle: "Big Baby Tape & kizaru", nameIconImage: "nil"),
        CategorySearchCell(id: 4, firstTitle: "НОВЫЙ АЛЬБОМ", secondTitle: "Психи попадают в топ", thirdTitle: "Макс Корж", nameIconImage: "nil"),
        CategorySearchCell(id: 4, firstTitle: "НОВЫЙ АЛЬБОМ", secondTitle: "MNEY COUNTER MUSIC", thirdTitle: "Scally Milano", nameIconImage: "nil"),
        CategorySearchCell(id: 4, firstTitle: "НОВЫЙ АЛЬБОМ", secondTitle: "ROOMINATION", thirdTitle: "SODA LUV", nameIconImage: "nil"),
        
        CategorySearchCell(id: 5, firstTitle: "ПРОСТРАНСТВЕННОЕ АУДИО", secondTitle: "Dawn FM", thirdTitle: "Weeknd", nameIconImage: "nil"),
        CategorySearchCell(id: 5, firstTitle: "ИЗБРАННЫЙ АЛЬБОМ", secondTitle: "BANDANA I", thirdTitle: "Big Baby Tape & kizaru", nameIconImage: "nil"),
        CategorySearchCell(id: 5, firstTitle: "НОВЫЙ АЛЬБОМ", secondTitle: "Выход в город", thirdTitle: "Noize MC", nameIconImage: "nil"),
        CategorySearchCell(id: 5, firstTitle: "ПРОСТРАНСТВЕННОЕ АУДИО", secondTitle: "На праздночной ноте 2021", thirdTitle: "Apple Music", nameIconImage: "nil"),
        CategorySearchCell(id: 5, firstTitle: "НОВИНКИ В ПРОСТРАНСТВЕННОМ АУДИО", secondTitle: "Sense Of Human", thirdTitle: "Markul", nameIconImage: "nil"),
        
        CategorySearchCell(id: 6, firstTitle: "НОВЫЙ АЛЬБОМ", secondTitle: "Dawn FM", thirdTitle: "The Weeknd", nameIconImage: "nil"),
        CategorySearchCell(id: 6, firstTitle: "ИЗБРАННЫЙ ПЛЕЙЛИСТ", secondTitle: "100 лучших песен", thirdTitle: "Apple Music", nameIconImage: "nil"),
        CategorySearchCell(id: 6, firstTitle: "СЧАСТЛИВОГО НОВОГО ГОДА", secondTitle: "Новогодние подарки от ярких артистов уходящего года", thirdTitle: " ", nameIconImage: "nil"),
        CategorySearchCell(id: 6, firstTitle: "НОВЫЙ АЛЬБОМ И ИНТЕРВЬЮ", secondTitle: "30", thirdTitle: "Adele", nameIconImage: "nil"),
        CategorySearchCell(id: 6, firstTitle: "APPLE MUSIC AWARDS", secondTitle: "Встречайте победеителей Apple Music Awards 2021", thirdTitle: " ", nameIconImage: "nil"),
        
        CategorySearchCell(id: 7, firstTitle: "СЧАСТЛИВОГО НОВОГО ГОДА", secondTitle: "Новогодние подарки от ярких артистов уходящего года", thirdTitle: " ", nameIconImage: "nil"),
        CategorySearchCell(id: 7, firstTitle: "ИЗБРАННЫЙ ПЛЕЙЛИСТ", secondTitle: "Соргевающие танцы", thirdTitle: "Apple Music", nameIconImage: "nil"),
        CategorySearchCell(id: 7, firstTitle: "С ЛЮБОВЬЮ, APPLE MUSIC", secondTitle: "Todat's Hits 2021 (Dj Mix)", thirdTitle: "DJ Khaled", nameIconImage: "nil"),
        CategorySearchCell(id: 7, firstTitle: "ИЗБРАННЫЙ ПЛЕЙЛИСТ", secondTitle: "Хорошее настроение", thirdTitle: "Apple Music Поп", nameIconImage: "nil"),
        CategorySearchCell(id: 7, firstTitle: "ПРОСТРАНСТВЕННОЕ АУДИО", secondTitle: "Альбомы и плейлисты в пространственном аудио", thirdTitle: " ", nameIconImage: "nil"),
        
        CategorySearchCell(id: 8, firstTitle: "ИЗБРАННЫЙ АЛЬБОМ", secondTitle: "BANDANA I", thirdTitle: "Big Baby Tape & kizaru", nameIconImage: "nil"),
        CategorySearchCell(id: 8, firstTitle: "НОВЫЙ АЛЬБОМ", secondTitle: "Выход в город", thirdTitle: "Noize MC", nameIconImage: "nil"),
        CategorySearchCell(id: 8, firstTitle: "НОВЫЙ АЛЬБОМ", secondTitle: "Психи попадают в топ", thirdTitle: "Макс Корж", nameIconImage: "nil"),
        CategorySearchCell(id: 8, firstTitle: "НОВЫЙ АЛЬБОМ", secondTitle: "Последний друг", thirdTitle: "Леонид Фёдоров", nameIconImage: "nil"),
        CategorySearchCell(id: 8, firstTitle: "НОВЫЙ АЛЬБОМ", secondTitle: "Красота и уродство", thirdTitle: "Oxxymiron", nameIconImage: "nil"),
        
        CategorySearchCell(id: 9, firstTitle: "НОВЫЙ РЕЛИЗ", secondTitle: "Раритеты", thirdTitle: "Animal ДжаZ", nameIconImage: "nil"),
        CategorySearchCell(id: 9, firstTitle: "НОВЫЙ АЛЬБОМ", secondTitle: "Последний друг", thirdTitle: "Леонид Фёдоров", nameIconImage: "nil"),
        CategorySearchCell(id: 9, firstTitle: "ОБНОВЛЁННЫЙ ПЛЕЙЛИСТ", secondTitle: "Рок-клуб", thirdTitle: "Apple Music Рок на руссом", nameIconImage: "nil"),
        CategorySearchCell(id: 9, firstTitle: "НОВЫЙ ЕР", secondTitle: "закат диснея - ЕР", thirdTitle: "гречка", nameIconImage: "nil"),
        CategorySearchCell(id: 9, firstTitle: "НОВЫЙ АЛЬБОМ", secondTitle: "Помнишь - ЕР", thirdTitle: "Гарик Сукачёв", nameIconImage: "nil"),
        
        CategorySearchCell(id: 11, firstTitle: "СЛУШАЙТЕ ПРЯМО СЕЙЧАС", secondTitle: "Boiler Room", thirdTitle: "Apple Music", nameIconImage: "nil"),
        CategorySearchCell(id: 11, firstTitle: "НОВЫЙ МИКСЫ", secondTitle: "Диджей-сеты с вечеринок Cercle на легендарных площадках", thirdTitle: " ", nameIconImage: "nil"),
        CategorySearchCell(id: 11, firstTitle: " ", secondTitle: "Compiled & Mixed 04 (DJ Mix)", thirdTitle: "John Digweed", nameIconImage: "nil"),
        CategorySearchCell(id: 11, firstTitle: "СЛУШАЙТЕ ПРЯМО СЕЙЧАС", secondTitle: "Live at Robert Johnson", thirdTitle: " ", nameIconImage: "nil"),
        CategorySearchCell(id: 11, firstTitle: "НОВЫЙ МИКС", secondTitle: "Miaxmag: The Cover Mix (DJ Mix)", thirdTitle: " Fred again..", nameIconImage: "nil"),
        
        CategorySearchCell(id: 12, firstTitle: "ИЗБРАННАЯ КОЛЛЕКЦИЯ", secondTitle: "Ario Parks, Tems, Foushee", thirdTitle: " ", nameIconImage: "nil"),
        CategorySearchCell(id: 12, firstTitle: "ИЗБРАННЫЙ АРТИСТ", secondTitle: "VACIO", thirdTitle: "Поп", nameIconImage: "nil"),
        CategorySearchCell(id: 12, firstTitle: "ИЗБРАННЫЙ АРТИСТ", secondTitle: "STRANIZA", thirdTitle: "Поп", nameIconImage: "nil"),
        CategorySearchCell(id: 12, firstTitle: "ИЗБРАННЫЙ АРТИСТ", secondTitle: "ANCHI", thirdTitle: "Поп", nameIconImage: "nil"),
        CategorySearchCell(id: 12, firstTitle: "ИЗБРАННЫЙ АРТИСТ", secondTitle: "Анет Сай", thirdTitle: "Поп", nameIconImage: "nil"),
        
        CategorySearchCell(id: 13, firstTitle: "ИЗБРАННЫЙ АЛЬБОМ", secondTitle: "LIVE LIFE FAST", thirdTitle: "Roddy Ricch", nameIconImage: "nil"),
        CategorySearchCell(id: 13, firstTitle: "ИЗБРАННЫЙ АЛЬБОМ", secondTitle: "Fighting Demons", thirdTitle: "Juice WRLD", nameIconImage: "nil"),
        CategorySearchCell(id: 13, firstTitle: "ИЗБРАННЫЙ АЛЬБОМ", secondTitle: "CHOMP 2", thirdTitle: "Russ", nameIconImage: "nil"),
        CategorySearchCell(id: 13, firstTitle: "ИЗБРАННЫЙ АЛЬБОМ", secondTitle: "THE GENETIC CODE", thirdTitle: "Скриптонит & Gee Baller", nameIconImage: "nil"),
        CategorySearchCell(id: 13, firstTitle: "ИЗБРАННЫЙ АЛЬБОМ", secondTitle: "Hall of Fame 2.0", thirdTitle: "Polo G", nameIconImage: "nil"),
        
        CategorySearchCell(id: 14, firstTitle: "ИЗБРАННЫЙ АЛЬБОМ", secondTitle: "BANDANA I", thirdTitle: "Big Baby Tape & kizaru", nameIconImage: "nil"),
        CategorySearchCell(id: 14, firstTitle: "НОВЫЙ АЛЬБОМ", secondTitle: "Выход в город", thirdTitle: "Noize MC", nameIconImage: "nil"),
        CategorySearchCell(id: 14, firstTitle: "НОВЫЙ АЛЬБОМ", secondTitle: "Психи попадают в топ", thirdTitle: "Макс Корж", nameIconImage: "nil"),
        CategorySearchCell(id: 14, firstTitle: "НОВЫЙ АЛЬБОМ", secondTitle: "Последний друг", thirdTitle: "Леонид Фёдоров", nameIconImage: "nil"),
        CategorySearchCell(id: 14, firstTitle: "НОВЫЙ АЛЬБОМ", secondTitle: "Красота и уродство", thirdTitle: "Oxxymiron", nameIconImage: "nil")
    ]
}

extension Track {
    static var hotTracks = [
        Track(titleHeader: "СОЛНЦЕ МОНАКО", titleArtist: "Люся Чеботина", nameIconImage: "sound1"),
        Track(titleHeader: "Никто", titleArtist: " NЮ", nameIconImage: "sound2"),
        Track(titleHeader: "ЗанесLо", titleArtist: "LOBODA", nameIconImage: "sound3"),
        Track(titleHeader: "Боже, как завидую", titleArtist: "HammAli & Navai & Jan Khalib", nameIconImage: "sound4"),
        Track(titleHeader: "Ты не моя пара", titleArtist: "Дима Билан & Мари Краймбери", nameIconImage: "sound5"),
        Track(titleHeader: "Из-за тебя", titleArtist: "Akmal'", nameIconImage: "sound6"),
        Track(titleHeader: "Любовь после тебя", titleArtist: "Artic & Asti", nameIconImage: "sound7"),
        Track(titleHeader: "abcdefu", titleArtist: "GAYLE", nameIconImage: "sound8")
    ]
}
