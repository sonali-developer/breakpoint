//
//  AuthViewController.swift
//  BreakpointApp
//
//  Created by Sonali Patel on 4/12/18.
//  Copyright © 2018 Sonali Patel. All rights reserved.
//

import UIKit
import Firebase

class AuthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            dismiss(animated: true, completion: nil)
        }
    }
    
  
    @IBAction func signInWithEmailBtnWasPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginViewController")
        present(loginVC!, animated: true, completion: nil)
    }
    
   
    @IBAction func googleSignInBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func facebookSignInBtnWasPressed(_ sender: Any) {
    }
}
