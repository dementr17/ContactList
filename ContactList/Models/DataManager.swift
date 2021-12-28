//
//  DataManager.swift
//  ContactList
//
//  Created by Дмитрий Чепанов on 27.12.2021.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let  names = [
        "Dmitriy", "Sergey", "Aleksey",
        "Stas", "Evgeniy", "Aleksandr",
        "Anton", "Yuriy", "Ilya"
    ]
    
    let surnames = [
        "Chepanov", "Ivanov", "Petrov",
        "Kozlov", "Shuvaev", "Vihlyaev",
        "Volostnah", "Polyakov", "Shevchenko"
    ]
    
    let emails = [
        "dim_chp@mail.ru", "ivanov@mail.ru", "a_shuk@mail.ru",
        "dementr@mail.ru", "ksv@mail.ru", "oddis@mail.ru",
        "ssep@mail.ru", "chp@mail.ru", "bk_ak@mail.ru"
    ]
    
    let phones = [
        "8 475 112 2433", "8 915 222 2323", "8 910 451 2734",
        "8 920 777 7777", "8 915 129 4303", " 8 910 345 0348",
        "8 953 234 2149", "8 475 2 582 362", "8 920 512 0475"
    ]
    private init() {}
}
