//
//  ViewController.swift
//  secondfirebase
//
//  Created by Yogesh Patel on 27/12/19.
//  Copyright © 2019 yogesh patel. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth



class ViewController: UIViewController {
   
    var ref: DatabaseReference!

    
    @IBOutlet weak var Email: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    
    @IBAction func btnsave(_ sender: Any) {
        let Data = ["Email":Email.text,"Password":Password.text]
        (self.ref.child("Data") as AnyObject).childByAutoId().setValue(Data)
        
        Auth.auth().signIn(withEmail: Email.text!, password: Password.text!) { (user, error) in
            if user != nil{
                print("done")
            }
        }
       
        }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         ref = Database.database().reference()
        // Do any additional setup after loading the view.
    }
}





