//
//  ViewController+TableView.swift
//  Raye7Task
//
//  Created by Ahmed Seleem on 6/5/17.
//  Copyright © 2017 Ahmed Seleem. All rights reserved.
//

import Foundation
import UIKit
extension ViewController: UITableViewDelegate,UITableViewDataSource
{

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
     if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? UserTableViewCell
     {
        cell.configureCell(user: users[indexPath.row])
        return cell
     }
    return UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }


}
