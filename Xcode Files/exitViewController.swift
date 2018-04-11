//
//  exitViewController.swift
//  a4
//
//  Created by Imran Juma on 2018-04-09.
//  Copyright © 2018 Imran Juma. All rights reserved.
//

import UIKit

class exitViewController: UIViewController {
    
    @IBAction func anotherExitButton(_ sender: Any) {
        // Exit the selected page we are in
        dismiss(animated: true, completion: nil)
        //used for debugging
        print("Exit Selected Page");
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //used for debugging
        print("User Has Been Moved To Page 4");

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
