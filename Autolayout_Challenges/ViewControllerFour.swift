//
//  ViewControllerFour.swift
//  Autolayout_Challenges
//
//  Created by Cherish Kim on 11/5/18.
//  Copyright © 2018 Cherish Kim. All rights reserved.
//  Fourth AutoLayout exercise
//

import UIKit

class ViewControllerFour: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let greenView = UIView()
        greenView.backgroundColor = .green
        greenView.translatesAutoresizingMaskIntoConstraints = false
        
        let label1 = UILabel()
        label1.backgroundColor = UIColor.clear
        label1.text = "Cherish Kim"
        label1.textColor = UIColor.black
        label1.translatesAutoresizingMaskIntoConstraints = false
        
        let label2 = UILabel()
        label2.backgroundColor = UIColor.clear
        label2.text = "Make School student"
        label2.textColor = UIColor.gray
        label2.font = UIFont(name:"Helvetica", size: 11.0)
        label2.translatesAutoresizingMaskIntoConstraints = false
        
        // green constraints
        let greenTop = NSLayoutConstraint(item: greenView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 100)
        let greenLeading = NSLayoutConstraint(item: greenView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 85)
        let greenWidth = NSLayoutConstraint(item: greenView, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.2, constant: 0)
        let greenHeight = NSLayoutConstraint(item: greenView, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        
        // label1 constraints
        let label1Top = NSLayoutConstraint(item: label1, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 100)
        let label1Trailing = NSLayoutConstraint(item: label1, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: -85)
        
        // label2 constraints
        let label2Top = NSLayoutConstraint(item: label2, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 150)
        let label2Trailing = NSLayoutConstraint(item: label2, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: -85)
        
        self.view.addSubview(greenView)
        self.view.addSubview(label1)
        self.view.addSubview(label2)
        
        NSLayoutConstraint.activate([greenTop, greenLeading, greenWidth, greenHeight, label1Top, label1Trailing, label2Top, label2Trailing])
    }
}
