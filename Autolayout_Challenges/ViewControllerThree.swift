//
//  ViewControllerThree.swift
//  Autolayout_Challenges
//
//  Created by Cherish Kim on 11/5/18.
//  Copyright © 2018 Cherish Kim. All rights reserved.
//  Third AutoLayout exercise
//

import UIKit

class ViewControllerThree: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let greenView = UIView()
        greenView.backgroundColor = .green
        greenView.translatesAutoresizingMaskIntoConstraints = false
        let blueView = UIView()
        blueView.backgroundColor = .blue
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        // green constraints
        let greenTop = NSLayoutConstraint(item: greenView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 100)
        
        let greenLeading = NSLayoutConstraint(item: greenView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 85)
        
        let greenWidth = NSLayoutConstraint(item: greenView, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.2, constant: 0)
        
        let greenHeight = NSLayoutConstraint(item: greenView, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        
        // blue constraints
        let blueTop = NSLayoutConstraint(item: blueView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 100)
        
        let blueTrailing = NSLayoutConstraint(item: blueView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: -85)
        
        let blueWidth = NSLayoutConstraint(item: blueView, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.2, constant: 0)
        
        let blueHeight = NSLayoutConstraint(item: blueView, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        
        self.view.addSubview(greenView)
        self.view.addSubview(blueView)
        
        NSLayoutConstraint.activate([greenTop, greenLeading, greenWidth, greenHeight, blueTop, blueTrailing, blueWidth, blueHeight])

    }
}
