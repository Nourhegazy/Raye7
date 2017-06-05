//
//  ViewController.swift
//  Raye7Task
//
//  Created by Ahmed Seleem on 6/5/17.
//  Copyright © 2017 Ahmed Seleem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usersTableView: UITableView!
    
    var users:[User] = []
    {
        didSet
        {
         self.usersTableView.reloadData()
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        usersTableView.register(UINib(nibName: "UserTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        requestUsersFromBackend
        {
        (users: [User]) in
            
         self.users = users
        }
    }

    

}

