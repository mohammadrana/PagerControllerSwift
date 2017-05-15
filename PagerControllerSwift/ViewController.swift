//
//  ViewController.swift
//  PagerControllerSwift
//
//  Created by Rana on 11/28/16.
//  Copyright © 2016 Rana. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CAPSPageMenuDelegate {
    var pageMenu : CAPSPageMenu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Array to keep track of controllers in page menu
        
        customPageView()
        
        self.title = "PAGE MENU"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        self.navigationController?.navigationBar.tintColor = UIColor.white
    }
    
    func customPageView() {
        var controllerArray : [UIViewController] = []
        
        // Create variables for all view controllers you want to put in the
        // page menu, initialize them, and add each to the controller array.
        // (Can be any UIViewController subclass)
        // Make sure the title property of all view controllers is set
        // Example:
//        let controller : UIViewController = UIViewController(nibName: "controllerNibName", bundle: nil)
//        controller.title = "SAMPLE TITLE"
//        controllerArray.append(controller)

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "pageOneViewController") as! PageOneViewController
        controller.parentNavigationController = self.navigationController
        controller.title = "Page One"
        controllerArray.append(controller)
        
        let controller1 = storyboard.instantiateViewController(withIdentifier: "pageTwoViewController") as! PageTwoViewController
        controller1.parentNavigationController = self.navigationController
        controller1.title = "Page Two"
        controllerArray.append(controller1)
        
        
//        let controller2 : RecentsTableViewController = RecentsTableViewController(nibName: "RecentsTableViewController", bundle: nil)
//        controller2.title = "RECENTS"
//        controller2.parentNavigationController = self.navigationController
//        controllerArray.append(controller2)
//        
//        let controller1 : TestTableViewController = TestTableViewController(nibName: "TestTableViewController", bundle: nil)
//        controller1.parentNavigationController = self.navigationController
//        controller1.title = "FAVORITES"
//        controllerArray.append(controller1)
//        
//        
//        
//        let controller3 : RecentsTableViewController = RecentsTableViewController(nibName: "RecentsTableViewController", bundle: nil)
//        controller3.title = "FRIENDS"
//        controller3.parentNavigationController = self.navigationController
//        controllerArray.append(controller3)
//        
//        let controller4 : RecentsTableViewController = RecentsTableViewController(nibName: "RecentsTableViewController", bundle: nil)
//        controller4.title = "OTHERS"
//        controller4.parentNavigationController = self.navigationController
//        controllerArray.append(controller4)
        
        // Customize page menu to your liking (optional) or use default settings by sending nil for 'options' in the init
        // Example:
        let parameters: [CAPSPageMenuOption] = [
            .menuItemSeparatorWidth(4.3),
            .useMenuLikeSegmentedControl(true),
            .menuItemSeparatorPercentageHeight(0.1),
                
            .scrollMenuBackgroundColor(UIColor.white),
            .viewBackgroundColor(UIColor(red: 247.0/255.0, green: 247.0/255.0, blue: 247.0/255.0, alpha: 1.0)),
            .bottomMenuHairlineColor(UIColor(red: 20.0/255.0, green: 20.0/255.0, blue: 20.0/255.0, alpha: 0.1)),
            .selectionIndicatorColor(UIColor(red: 18.0/255.0, green: 150.0/255.0, blue: 225.0/255.0, alpha: 1.0)),
            .menuMargin(20.0),
            .menuHeight(40.0),
            .selectedMenuItemLabelColor(UIColor(red: 18.0/255.0, green: 150.0/255.0, blue: 225.0/255.0, alpha: 1.0)),
            .unselectedMenuItemLabelColor(UIColor(red: 40.0/255.0, green: 40.0/255.0, blue: 40.0/255.0, alpha: 1.0)),
            .menuItemFont(UIFont(name: "HelveticaNeue-Medium", size: 14.0)!),
            //.useMenuLikeSegmentedControl(true),
            .menuItemSeparatorRoundEdges(true),
            .selectionIndicatorHeight(2.0),
            //.menuItemSeparatorPercentageHeight(0.1)
        ]
        
        // Initialize page menu with controller array, frame, and optional parameters
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: self.view.frame.width, height: self.view.frame.height)), pageMenuOptions: parameters)
        
        // Optional delegate
        pageMenu!.delegate = self
        
        // Lastly add page menu as subview of base view controller view
        // or use pageMenu controller in you view hierachy as desired
        self.view.addSubview(pageMenu!.view)
    }
    
    func didMoveToPage(_ controller: UIViewController, index: Int) {
        print("didMoveToPage");
    }
    
    func willMoveToPage(_ controller: UIViewController, index: Int) {
        print("willMoveToPage")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

