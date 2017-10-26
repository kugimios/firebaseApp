//
//  ViewController.swift
//  fireBaseApp
//
//  Created by ST13 on 26.10.2017.
//  Copyright © 2017 Kugim. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextFieldOutlet: UITextField!
    
    
    @IBAction func addButtonAction(_ sender: UIButton) {
        
        ref = Database.database().reference()
        
        if nameTextFieldOutlet.text != "" {
            ref?.child("list").childByAutoId().setValue(nameTextFieldOutlet.text)
            ref?.child("name").childByAutoId().setValue(nameTextFieldOutlet.text)
        }
        
        print("Text Field Added")
        
    }
    
    var myList: [String] = []
    var ref: DatabaseReference?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

