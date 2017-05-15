//
//  PageOneViewController.swift
//  PagerControllerSwift
//
//  Created by Rana on 11/29/16.
//  Copyright © 2016 Rana. All rights reserved.
//

import UIKit

class PageOneViewController: UIViewController, UIPickerViewDelegate {
     var parentNavigationController : UINavigationController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("viewDidLoad")
        loadCell()
        loadDatePicker()
        
        // Do any additional setup after loading the view.
    }

    func loadCell() {
        DispatchQueue.main.async {
            let cell : UIView!
            cell = UIView(frame: CGRect(x:50, y:50, width:50, height:50))
            cell.backgroundColor = UIColor(red:1.00, green:0.00, blue:0.00, alpha:1.00)
            self.view.addSubview(cell)
            print("Test")
        }
    }
    
    func loadDatePicker() {
        //make DatePicker
        var myDatePicker: UIDatePicker = UIDatePicker()
        
        // setting properties of the datePicker
        myDatePicker = UIDatePicker(frame: CGRect(x:0, y:50, width:self.view.frame.width, height:200))
        //myDatePicker.timeZone = NSTimeZone.local
        myDatePicker.backgroundColor = UIColor.white
        myDatePicker.layer.cornerRadius = 5.0
        myDatePicker.layer.shadowOpacity = 0.5
        
        let dateString = "Thursday, 19 Jan 2017"
        let df = DateFormatter()
        df.dateFormat = "eeee, dd MM yyyy"
        let date = df.date(from: dateString)
        if let unwrappedDate = date {
            myDatePicker.setDate(unwrappedDate, animated: false)
        }
        
        // add an event called when value is changed.
        myDatePicker.addTarget(self, action: Selector(("onDidChangeDate:")), for: UIControlEvents.valueChanged)

        
        // add DataPicker to the view
        self.view.addSubview(myDatePicker)
    }
    
    // called when the date picker called.
    internal func onDidChangeDate(sender: UIDatePicker){
        
        // date format
        let myDateFormatter: DateFormatter = DateFormatter()
        myDateFormatter.dateFormat = "MM/dd/yyyy hh:mm"
        
        // get the date string applied date format
        let selectedDate: String = myDateFormatter.string(from: sender.date)
        
        print("Selected value \(selectedDate)")

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    
}
