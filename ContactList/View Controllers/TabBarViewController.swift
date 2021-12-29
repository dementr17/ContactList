//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Дмитрий Чепанов on 28.12.2021.
//

import UIKit

protocol ModelDataSource {
    var persons: [Person] { get }
}

class TabBarViewController: UITabBarController {
    
    private let personsModel = Person.getContactList()

}

// MARK: - ModelDataSource
extension TabBarViewController: ModelDataSource {
    var persons: [Person] {
        personsModel
    }
}
