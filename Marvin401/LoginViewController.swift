//
//  LoginViewController.swift
//  Marvin401
//
//  Created by Mazen Azar on 2/11/17.
//  Copyright © 2017 Mazen Azar. All rights reserved.
//

import Alamofire
import UIKit

class LoginViewController: UIViewController {
    
    let URL_USER_REGISTER = "http://192.168.1.105/SimplifiediOS/v1/register.php"
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextfield: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var birthdayPicker: UIDatePicker!
    
    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var zipTextField: UITextField!
    
    @IBAction func buttonRegister(_ sender: UIButton) {
        
        let parameters: Parameters=[
            "username": usernameTextField.text!,
            "password" : passwordTextField.text!,
            "first" : firstNameTextField.text!,
            "last" : lastNameTextfield.text!,
            "email" : emailTextField.text!
        ]
    }
    
    Alamofire.request(URL_USER_REGISTER, method: .post, parameters: parameters).responseJSON
    {
    response in
    //printing response
    print(response)
    
    //getting the json value from the server
    if let result = response.result.value {
    
    //converting it as NSDictionary
    let jsonData = result as! NSDictionary
    
    //displaying the message in label
    self.labelMessage.text = jsonData.value(forKey: "message") as! String?
    }
    }
    
}





    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
