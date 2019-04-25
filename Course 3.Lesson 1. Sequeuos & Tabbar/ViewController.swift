//
//  ViewController.swift
//  Course 3.Lesson 1. Sequeuos & Tabbar
//
//  Created by Admin on 23/04/2019.
//  Copyright © 2019 Vladimir Tezin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var login: UITextField!
    @IBOutlet var password: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let destination = segue.destination as? CheckAccessVC else {return}
        guard let action = segue.identifier else {return}
        
        destination.login = login.text ?? ""
        destination.password = password.text ?? ""
        destination.action = action
        
    }

}

