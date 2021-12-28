//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Дмитрий Чепанов on 28.12.2021.
//

import UIKit

class ContactListViewController: UITableViewController, UITabBarControllerDelegate {

//    var infoList: [Person]!
    var infoList: [Person] = [] {
        didSet {
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let tabBarController = self.tabBarController else { return }
        
        tabBarController.delegate = self
        getPersones()

    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infoList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personName", for: indexPath)
        
        let personInfo = infoList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = "\(personInfo.name) \(personInfo.surname)"
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let person = infoList[indexPath.row]
        performSegue(withIdentifier: "showInfo", sender: person)
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoListVC = segue.destination as? InfoListViewController else { return }
        infoListVC.infoPersonContact = sender as? Person
        guard let listPersonVC = segue.destination as? ListPersonViewController else { return }
        listPersonVC.persons = infoList
    }

    private func getPersones() {
        guard
            let dataSource = tabBarController as? ModelDataSource
        else { return }
        
        self.infoList = dataSource.persons
    }

}
