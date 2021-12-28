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
        "Ivan", "Mihail", "Aleksandr",
        "Anton", "Yuriy", "Ilya"
    ]
    
    let surnames = [
        "Chepanov", "Ivanov", "Petrov",
        "Kozlov", "Kobzev", "Egorov",
        "Sidorov", "Polyakov", "Dmitriev"
    ]
    
    let emails = [
        "dc@mail.ru", "iv@mail.ru", "eg@mail.ru",
        "ks@mail.ru", "tr@mail.ru", "ov@mail.ru",
        "ss@mail.ru", "ch@mail.ru", "bk@mail.ru"
    ]
    
    let phones = [
        "112233", "222223", "451234",
        "777777", "129403", "130348",
        "234249", "758362", "120475"
    ]
    private init() {}
}
