//
//  ProfileViewController.swift
//  ToyStore
//
//  Created by Parth Patel on 2020-12-12.
//  Copyright © 2020 Parth Patel. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var userNameTV: UITextField!
    @IBOutlet weak var passwordTV: UITextField!
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

    @IBAction func updateButton(_ sender: Any) {
    }
    @IBAction func logoutButton(_ sender: Any) {
        
    }
}
