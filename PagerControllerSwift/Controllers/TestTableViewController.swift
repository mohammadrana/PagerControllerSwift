//
//  TestTableViewController.swift
//  NFTopMenuController
//
//  Created by Rana on 11/28/16.
//  Copyright © 2016 Rana. All rights reserved.
//

import UIKit

class TestTableViewController: UITableViewController {
    
    var parentNavigationController : UINavigationController?
    
    var namesArray : [String] = ["David Fletcher", "Charles Gray", "Timothy Jones", "Marie Turner", "Kim White"]
    var photoNameArray : [String] = ["man8.jpg", "man2.jpg", "man3.jpg", "woman4.jpg", "woman1.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UINib(nibName: "FriendTableViewCell", bundle: nil), forCellReuseIdentifier: "FriendTableViewCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("\(self.title) page: viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.tableView.showsVerticalScrollIndicator = false
        super.viewDidAppear(animated)
        self.tableView.showsVerticalScrollIndicator = true
        
        print("favorites page: viewDidAppear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        //let cell : FriendTableViewCell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell") as! FriendTableViewCell
        
        // Configure the cell...
        //cell.nameLabel.text = namesArray[indexPath.row]
        //cell.photoImageView.image = UIImage(named: photoNameArray[indexPath.row])
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 94.0
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.001
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newVC : UIViewController = UIViewController()
        newVC.view.backgroundColor = UIColor.purple
        newVC.title = "Favorites"
        
        parentNavigationController!.pushViewController(newVC, animated: true)
    }


}
