//
//  ManageController.swift
//  Marvin401
//
//  Created by Courtney-Lynn Presto on 3/24/17.
//  Copyright © 2017 Mazen Azar. All rights reserved.
//

import UIKit

class ManageController: UIViewController {
    @IBOutlet weak var understandContainer: UIView!
    @IBOutlet weak var findContainer: UIView!
    @IBOutlet weak var manageContainer: UIView!
    @IBOutlet weak var connectContainer: UIView!
    
    @IBOutlet weak var segmentController: UISegmentedControl!
    
    var setFind = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if setFind {
            segmentController.selectedSegmentIndex = 1
            UIView.animate(withDuration: 0.5, animations: {
                self.understandContainer.alpha = 0
                self.findContainer.alpha = 1
                self.manageContainer.alpha = 0
                self.connectContainer.alpha=0
            })
        }
    }
    
    @IBAction func showComponent(sender: UISegmentedControl) {
        if segmentController.selectedSegmentIndex == 0 {
            UIView.animate(withDuration: 0.5, animations: {
                self.understandContainer.alpha = 1
                self.findContainer.alpha = 0
                self.manageContainer.alpha = 0
                self.connectContainer.alpha=0
            })
        } else if segmentController.selectedSegmentIndex == 1 || setFind{
            UIView.animate(withDuration: 0.5, animations: {
                self.understandContainer.alpha = 0
                self.findContainer.alpha = 1
                self.manageContainer.alpha = 0
                self.connectContainer.alpha=0
            })
        }  else if segmentController.selectedSegmentIndex == 2 {
            UIView.animate(withDuration: 0.5, animations: {
                self.understandContainer.alpha = 0
                self.findContainer.alpha = 0
                self.manageContainer.alpha = 1
                self.connectContainer.alpha=0
            })
        } else {
            UIView.animate(withDuration: 0.5, animations: {
                self.understandContainer.alpha = 0
                self.findContainer.alpha = 0
                self.manageContainer.alpha = 0
                self.connectContainer.alpha = 1
            })
        }
        
    }
}
