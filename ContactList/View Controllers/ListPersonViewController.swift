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
    
    private func getPersons() {
        guard
            let dataSource = tabBarController as? ModelDataSource
        else { return }
        
        self.persons = dataSource.persons
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

// MARK: - UITabBarControllerDelegate
extension ListPersonViewController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController,
                          didSelect viewController: UIViewController) {
        guard viewController === self else { return }
        getPersons()
    }
}
