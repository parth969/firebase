//
//  sign upViewController.swift
//  secondfirebase
//
//  Created by Yogesh Patel on 30/12/19.
//  Copyright © 2019 yogesh patel. All rights reserved.
//

import UIKit
import Firebase

class sign_upViewController: UIViewController {
    @IBOutlet weak var Emai: UITextField!
    
   
    @IBOutlet weak var Password:
    UITextField!
    
    @IBAction func SignUp(_ sender: Any) {
        
        Auth.auth().createUser(withEmail: Emai.text!, password: Password.text!) { (user, error) in
            if user != nil{
                print("Done")
            }
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
