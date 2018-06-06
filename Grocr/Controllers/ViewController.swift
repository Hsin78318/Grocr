//
//  ViewController.swift
//  Grocr
//
//  Created by Chen Hsin on 2018/6/5.
//  Copyright © 2018年 Chen Hsin. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    
    let loginToList = "LoginToList"
    
    @IBOutlet weak var textFieldLoginEmail: UITextField!
    @IBOutlet weak var textFieldLoginPassword: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        Auth.auth().addStateDidChangeListener() { auth, user in
            if user != nil {
                self.performSegue(withIdentifier: self.loginToList, sender: nil)
                self.textFieldLoginEmail.text = nil
                self.textFieldLoginPassword.text = nil
            }
        }
    }
    
    
    @IBAction func loginDidTouch(_ sender: Any) {
       guard
        let email = textFieldLoginEmail.text,
        let password = textFieldLoginPassword.text,
        email.count > 0,
        password.count > 0
        else  {
            return
        }
    }
   
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }


}

