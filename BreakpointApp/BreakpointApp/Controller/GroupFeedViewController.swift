//
//  GroupFeedViewController.swift
//  BreakpointApp
//
//  Created by Sonali Patel on 4/19/18.
//  Copyright © 2018 Sonali Patel. All rights reserved.
//

import UIKit

class GroupFeedViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var membersLbl: UILabel!
    @IBOutlet weak var groupTitle: UILabel!
    @IBOutlet weak var sendBtnView: UIView!
    @IBOutlet weak var messageTextField: InsetTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendBtnView.bindToKeyboard()
    }

   
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func sendBtnWasPressed(_ sender: Any) {
    }
}
