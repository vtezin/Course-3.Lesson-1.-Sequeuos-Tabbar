//
//  CheckAccessVC.swift
//  Course 3.Lesson 1. Sequeuos & Tabbar
//
//  Created by Admin on 24/04/2019.
//  Copyright © 2019 Vladimir Tezin. All rights reserved.
//

import UIKit

class CheckAccessVC: UIViewController {

    @IBOutlet var resultInfo: UILabel!
    
    private let correctLogin = "Apple"
    private let correctPassword = "Swift"
    
    var login = ""
    var password = ""
    var action = ""
    
    override func viewWillAppear(_ animated: Bool) {
        doAction(action: action)
    }
    
    //проверка логина-пароля
    private func checkAccess(login: String, password: String) -> Bool {
        return login == correctLogin && password == correctPassword
    }
    
    //обработка перехода
    //выполнение определенного действия в зависимости от сигвея перехода
    private func doAction(action: String) {
        switch action {
        case "checkAccess":
            if checkAccess(login: login, password: password) {
                resultInfo.text = "Access allowed"
                resultInfo.textColor = .green
            }
            else
            {
                resultInfo.text = "Your login or password is incorrect"
                resultInfo.textColor = .red
            }
        case "showLogin":
            resultInfo.text = "Correct login: " + correctLogin
        case "showPassword":
            resultInfo.text = "Correct password: " + correctPassword
        default:
            resultInfo.text = "Unknown action"
        }
    }

}
