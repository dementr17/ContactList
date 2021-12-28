//
//  Person.swift
//  ContactList
//
//  Created by Дмитрий Чепанов on 28.12.2021.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phones: String
    
    static func getContactList() -> [Person] {

        var person: [Person] = []
        
        var namesPerson = DataManager.shared.names
        var surNamesPerson = DataManager.shared.surnames
        var emailsPerson = DataManager.shared.emails
        var phonesPerson = DataManager.shared.phones
        
        var surNamePerson: String
        var namePerson: String
        var emailPerson: String
        var phonePerson: String
        
        for _ in 1...DataManager.shared.phones.count {
            
                let indexName = Int.random(in: 0..<namesPerson.count)
                namePerson = namesPerson[indexName]
                namesPerson.remove(at: indexName)

                let indexSurName = Int.random(in: 0..<surNamesPerson.count)
                surNamePerson = surNamesPerson[indexSurName]
                surNamesPerson.remove(at: indexSurName)
                
                let indexEmail = Int.random(in: 0..<emailsPerson.count)
                emailPerson = emailsPerson[indexEmail]
                emailsPerson.remove(at: indexEmail)

                let indexPhone = Int.random(in: 0..<phonesPerson.count)
                phonePerson = phonesPerson[indexPhone]
                phonesPerson.remove(at: indexPhone)

            let personPerson = Person(name: namePerson, surname: surNamePerson, email: emailPerson, phones: phonePerson)
            person.append(personPerson)
        }
        
        return person
    }
}
