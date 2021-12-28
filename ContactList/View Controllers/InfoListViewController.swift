//
//  InfoListViewController.swift
//  ContactList
//
//  Created by Дмитрий Чепанов on 28.12.2021.
//

import UIKit

class InfoListViewController: UIViewController {

    @IBOutlet weak var emailPerson: UILabel!
    @IBOutlet weak var numberPerson: UILabel!
    
    var infoPersonContact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailPerson.text = "📧" + infoPersonContact.email
        numberPerson.text = "📞" + infoPersonContact.phone
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = infoPersonContact.name + " " + infoPersonContact.surname
    }
    

}
