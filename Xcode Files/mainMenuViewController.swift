//
//  mainMenuViewController.swift
//  a4
//
//  Created by Imran Juma on 2018-04-09.
//  Copyright © 2018 Imran Juma. All rights reserved.
//

import UIKit

//Class made for a main-menu
class mainMenuViewController: UIViewController {
    
    //Take us to the instructions page
    @IBAction func instructionsButton(_ sender: Any) {
        //Used for debugging
        print("Button 1 Pressed")
        //Take me to the selected view
        performSegue(withIdentifier: "movePage1", sender: self)

    }
    
    
    @IBAction func chatButton(_ sender: Any) {
        //Used for debugging
        print("Button 2 Pressed")
        //Take me to the selected view
        performSegue(withIdentifier: "movePage2", sender: self)
        
    }
    
    
    
    @IBAction func abutButton(_ sender: Any) {
        //Used for debugging
        print("Button 3 Pressed")
        //Take me to the selected view
        performSegue(withIdentifier: "movePage3", sender: self)
    }
    
    
    @IBAction func exitButton(_ sender: Any) {
        //Used for debugging
        print("Button 4 Pressed")
        //Take me to the selected view
        performSegue(withIdentifier: "movePage4", sender: self)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //used for debugging
        print("Home Page Loaded");

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
