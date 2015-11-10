//
//  ViewController.swift
//  Category
//
//  Created by Veena on 11/8/15.
//  Copyright © 2015 Veena. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var departmenttableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.departmenttableView.delegate = self
        self.departmenttableView.dataSource = self
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //    var cell = UITableViewCell()
        //
        //    cell.textLabel.text = "This is row \(indexPath.row)"
        
        var cell = tableView.dequeueReusableCellWithIdentifier("departmentCell") as! departmentCell
        
        // Configure YourCustomCell using the outlets that you've defined.
        cell.departmentLabel.text = "Fresh Produce"
        
        return cell
    }
}

