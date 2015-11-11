//
//  ViewController.swift
//  Category
//
//  Created by Veena on 11/8/15.
//  Copyright © 2015 Veena. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

 
    
    @IBOutlet weak var departmentCollection: UICollectionView!
    
    @IBOutlet weak var categoryCollection: UICollectionView!
    
    
    var departments: [String]!
    
    let department = ["Fresh Produce", "Fruits", "Favourites", "Bakery"]
    
    var categories:[String]!
    var category = ["Cakes","Vegetables"," Kale","Beets","Soups", "Cakes","Vegetables"," Kale","Beets","Soups"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        departmentCollection.delegate = self
        departmentCollection.dataSource = self
        
        departments = department
        
        categoryCollection.delegate = self
        categoryCollection.dataSource = self
        
        categories = category
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    
    {
        if (collectionView == self.departmentCollection)
        {
        return department.count
        }
        
        return category.count
        
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        if (collectionView == self.departmentCollection)
        {
        let cell = departmentCollection.dequeueReusableCellWithReuseIdentifier("departmentViewCell", forIndexPath: indexPath) as! departmentViewCell
       
        cell.departmentLabel?.text = department[indexPath.row]
        
        return cell
        }
        else
        {
        let cell = categoryCollection.dequeueReusableCellWithReuseIdentifier("categoryViewCell", forIndexPath: indexPath) as! categoryViewCell
            
        cell.categoryLabel?.text = category[indexPath.row]
            
        return cell
        }
    }
    
//    func collectionView(categoryCollection: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return category.count
//        
//    }
//    
//    func collectionView(categoryCollection: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
//        
//        let cell = categoryCollection.dequeueReusableCellWithReuseIdentifier("categoryViewCell", forIndexPath: indexPath) as! categoryViewCell
//        
//        cell.categoryLabel?.text = category[indexPath.row]
//        
//        return cell
//    }
    
    
    
}

