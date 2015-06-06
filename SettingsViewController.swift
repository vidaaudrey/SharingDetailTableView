//
//  SettingsViewController.swift
//  SharingDetailTableView
//
//  Created by Audrey Li on 6/6/15.
//  Copyright (c) 2015 shomigo.com. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {
    let data = ["Language", "Currency", "Visibility"]
    var dvcRowCount:Int?
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.row {
        case 0: dvcRowCount = 2
        case 1: dvcRowCount = 3
        case 2: dvcRowCount = 4
        default: dvcRowCount = 1
        }
        performSegueWithIdentifier("showDetail", sender: self)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as DetailTableViewController
        dvc.rowCount = dvcRowCount
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return data.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }

}
