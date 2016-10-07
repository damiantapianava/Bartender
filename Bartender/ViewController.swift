//
//  ViewController.swift
//  Bartender
//
//  Created by Damián Tapia Nava on 07/10/16.
//  Copyright © 2016 Damián Tapia Nava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnEntrar(_ sender: AnyObject)
    {
        if self.txtEmail.text != "" && self.txtPassword.text != ""
        {
            performSegue(withIdentifier: "btnEntrarID", sender: self)
            
        } else {
            
            let ac: UIAlertController = UIAlertController(title: "OK", message: "Todos los campos son requeridos",
                                                          preferredStyle: .alert)
            
            let bac = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            ac.addAction(bac)
            
            self.present(ac, animated: true, completion: nil)
        }
    }

}

