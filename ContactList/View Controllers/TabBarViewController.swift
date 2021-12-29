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

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarControllers = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarControllers.viewControllers else { return }
        
        for viewController in viewControllers {
            if let contactVC = viewController as? ContactListViewController {
                contactVC.infoList = personsModel
            } else if let personVC = viewController as? ListPersonViewController {
                personVC.persons = personsModel
            }
        }
    }
}

// MARK: - ModelDataSource
extension TabBarViewController: ModelDataSource {
    var persons: [Person] {
        personsModel
    }
}
