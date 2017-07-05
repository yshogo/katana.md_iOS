//
//  LoginViewController.swift
//  kataba.md
//
//  Created by ShogoYamada on 2017/07/04.
//  Copyright © 2017年 山田尚吾. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: ViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    let ud = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if UserDefaults.standard.object(forKey: "id") != nil{
            next(trasitionName: "topVIewController")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
        
        Auth.auth().createUser(withEmail: email.text!, password: password.text!, completion: { user, error in
            
            if let error = error {
                print("ユーザーを作れませんでした \(error)")
                return
            }
            
            if let user = user {
                print("user : \(user.email!)ユーザーを作成しました")
                self.ud.set("Logined User Flag", forKey: "id")
                self.next(trasitionName: "topVIewController")
            }
        })
    }
    

}
