//
//  DrinkDetailVC.swift
//  Bartender
//
//  Created by Damián Tapia Nava on 07/10/16.
//  Copyright © 2016 Damián Tapia Nava. All rights reserved.
//

import UIKit

class DrinkDetailVC: UIViewController
{
    var info:NSDictionary?
    
    @IBOutlet weak var imgDrinkPhoto:    UIImageView!
    @IBOutlet weak var txtIngredientes:  UITextView!
    @IBOutlet weak var txtInstrucciones: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        let imagePath = (self.info!["image"] as! String)
        
        self.imgDrinkPhoto.image = UIImage(named: imagePath)
        
        self.txtIngredientes.text  = (self.info!["ingredients"] as! String)
        self.txtInstrucciones.text = (self.info!["directions"] as! String)
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
