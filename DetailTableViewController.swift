//
//  DetailTableViewController.swift
//  SharingDetailTableView
//
//  Created by Audrey Li on 6/6/15.
//  Copyright (c) 2015 shomigo.com. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {

    var rowCount:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 0 if the rowCount is not set
        return rowCount ?? 0
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("detailCell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = "title \(indexPath.row)"
        
        return cell
    }
}
