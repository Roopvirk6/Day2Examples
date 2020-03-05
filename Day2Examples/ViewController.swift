//
//  ViewController.swift
//  Day2Examples
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var Email: UILabel!
    
    
    
    @IBOutlet weak var txtField: UITextField!
    
    
    @IBOutlet weak var passWord: UILabel!
    
    
    @IBOutlet weak var txtField2: UITextField!
    
    
    
    @IBAction func logIn(_ sender: UIButton)
    {
    
        if sender.tag == 0 //show alert click
                {
                let alertController = UIAlertController(title: "error", message:
                    "invalid email id and password", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Default 1", style: .default))
                    alertController.addAction(UIAlertAction(title: "default 2", style: .default))
        alertController.addAction(UIAlertAction(title: "cancel", style: .cancel))
                    alertController.addAction(UIAlertAction(title: "Dismiss", style: .destructive))
                self.present(alertController, animated: true, completion: nil)
                }
                if sender.tag == 1 //show action sheet
                {
                    let alertController = UIAlertController(title: "error", message:
                                "show action!", preferredStyle: .alert)
                            
                                alertController.addAction(UIAlertAction(title: "default 2", style: .destructive))
                    alertController.addAction(UIAlertAction(title: "cancel", style: .cancel))
                                alertController.addAction(UIAlertAction(title: "Dismiss", style: .destructive))
                            self.present(alertController, animated: true, completion: nil)
                }
        
    }
    
    
    @IBAction func switchControl(_ sender: UISwitch)
    {
        UserDefaults.standard.set(txtField.text,forKey: "name")
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

}

