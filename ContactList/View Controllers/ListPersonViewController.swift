//
//  ListPersonViewController.swift
//  ContactList
//
//  Created by Дмитрий Чепанов on 28.12.2021.
//

import UIKit

class ListPersonViewController: UITableViewController  {
    
    var persons: [Person] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    private func getPersons() {
        guard
            let dataSource = tabBarController as? ModelDataSource
        else { return }
        
        self.persons = dataSource.persons
    }
    
    // MARK: - Table view data source
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "MyCellTableViewCell",
                                 bundle: nil),
                           forCellReuseIdentifier: "MyCellTableViewCell")
        
        guard let tabBarController = self.tabBarController else { return }
        
        tabBarController.delegate = self
        
        getPersons()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        2
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        30
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCellTableViewCell", for: indexPath) as! MyCellTableViewCell
        if indexPath.row == 0 {
            cell.imageLabel.text = "📞"
            cell.txtLabel.text = persons[indexPath.section].phone
        } else {
            cell.imageLabel.text = "📧"
            cell.txtLabel.text = persons[indexPath.section].email
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].name + " " + persons[section].surname
    }    
}

// MARK: - UITabBarControllerDelegate
extension ListPersonViewController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController,
                          didSelect viewController: UIViewController) {
        guard viewController === self else { return }
        getPersons()
    }
}
