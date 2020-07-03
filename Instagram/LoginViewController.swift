//
//  LoginViewController.swift
//  Instagram
//
//  Created by USER on 2020/07/03.
//  Copyright © 2020 shogo.ujiie. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    
    
    @IBOutlet weak var mailAddress: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var displayName: UITextField!
    
    @IBAction func handleLogin(_ sender: Any) {
    }
    
    @IBAction func handleCreate(_ sender: Any) {
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
