//
//  LoginViewController.swift
//  fireBaseApp
//
//  Created by ST13 on 26.10.2017.
//  Copyright © 2017 Kugim. All rights reserved.
//

import UIKit
import FirebaseAuth


class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextFieldOutlet: UITextField!
    
    @IBOutlet weak var passwordTextFieldOutlet: UITextField!
    
    @IBAction func signInButtonAction(_ sender: UIButton) {
        let emailField = emailTextFieldOutlet.text!
        let passwordField = passwordTextFieldOutlet.text!
        
        if emailField != "" && passwordField != "" {
            
            Auth.auth().signIn(withEmail: emailField, password: passwordField, completion: { (user, error ) in
                if user != nil {
                    print(user!.email ?? "")
                    print("User is corret")
                } else {
                    if let myError = error?.localizedDescription {
                        print(myError)
                    } else {
                        print("ERROR")
                    }
                }
                
            })
            
            
        }
        
        
    }
    
    @IBAction func signUpButtonAction(_ sender: UIButton) {
        let emailField = emailTextFieldOutlet.text!
        let passwordField = passwordTextFieldOutlet.text!
        
        if emailField != "" && passwordField != "" {
            Auth.auth().createUser(withEmail: emailField, password: passwordField, completion: { (user, error ) in
                if user != nil {
                    print(user!.email ?? "")
                    print("User is corret")
                } else {
                    if let myError = error?.localizedDescription {
                        print(myError)
                    } else {
                        print("ERROR")
                    }
                }
                
            })
            
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
