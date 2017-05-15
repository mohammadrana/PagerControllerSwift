//
//  RecentsTableViewCell.swift
//  PageMenuDemoTabbar
//
//  Created by Rana on 11/28/16.
//  Copyright © 2016 Rana. All rights reserved.
//

import UIKit

class RecentsTableViewCell: UITableViewCell {

    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var activityImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        let path : UIBezierPath = UIBezierPath()
//        path.move(to: CGPoint(x:0, y:34))
//        path.addLine(to: CGPoint(x:0, y:64))
//        path.addLine(to: CGPoint(x:64, y:64))
//        path.addLine(to: CGPoint(x:64, y:0))
////       path.addLine(to: CGPoint(x:34, y:0))
//        path.close()
//        var mask : CAShapeLayer = CAShapeLayer()
//        mask.frame = photoImageView.bounds
//        mask.path = path.CGPath
//        
//        photoImageView.layer.mask = mask
        
        photoImageView.layer.cornerRadius = 15
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
