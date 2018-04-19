//
//  MeViewController.swift
//  BreakpointApp
//
//  Created by Sonali Patel on 4/18/18.
//  Copyright © 2018 Sonali Patel. All rights reserved.
//

import UIKit
import Firebase

class MeViewController: UIViewController {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.emailLbl.text = Auth.auth().currentUser?.email
    }
    
    @IBAction func signOutBtnWasPressed(_ sender: Any) {
        let logoutPopUp = UIAlertController(title: "logout", message: "Are you sure you want to logout", preferredStyle: .actionSheet)
        let logoutAction = UIAlertAction(title: "logout", style: .destructive) { (buttonTapped) in
            do {
              try Auth.auth().signOut()
                let authVC = self.storyboard?.instantiateViewController(withIdentifier: "AuthViewController") as? AuthViewController
                self.present(authVC!, animated: true, completion: nil)
            } catch {
                print(error)
            }
           
        }
        logoutPopUp.addAction(logoutAction)
        present(logoutPopUp, animated: true, completion: nil)
    }
    
}
