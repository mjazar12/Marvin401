//
//  CareHomeViewController.swift
//  Marvin401
//
//  Created by Muthuppalaniappan sivanadiyan on 4/10/17.
//  Copyright © 2017 Mazen Azar. All rights reserved.
//

import UIKit

class CareHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let mc = segue.destination as! ManageController
        if segue.identifier == "MapsSegue"{
            mc.setFind = true
        }
        else if segue.identifier == "UnderstandSegue"{
            mc.setUnderstand = true
        }
        else if segue.identifier == "ManageSegue" {
            mc.setManage = true
        }
        else if segue.identifier == "ConnectSegue" {
            mc.setConnect = true
        }
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
