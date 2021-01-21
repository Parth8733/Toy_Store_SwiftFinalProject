//
//  RegisterViewController.swift
//  ToyStore
//
//  Created by Sahajpal Singh on 2020-12-13.
//  Copyright © 2020 Parth Patel. All rights reserved.
//

import UIKit
import CoreData
class RegisterViewController: UIViewController {

    @IBOutlet weak var userNameTxtView: UITextField!
    @IBOutlet weak var passwordTxtView: UITextField!
    var users:[User]!
    var username:String!
    var passwordStr:String!
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

    @IBAction func registerButton(_ sender: Any) {
        username = userNameTxtView.text!
        passwordStr = passwordTxtView.text!
        //checking username and password isEmpty
        if(username.isEmpty || passwordStr.isEmpty)
        {
            //displaying alert
            let alertController1 = UIAlertController (title: "Not Valid ", message: "User name or Password is empty ", preferredStyle: UIAlertController.Style.alert)
            alertController1.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertController1, animated: true, completion: nil)
            
        }
        else{
                //creating context of CoreData
                let context:NSManagedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
                let newUser = NSEntityDescription.insertNewObject(forEntityName: "User", into: context) as NSManagedObject  //creating new user object for User Entity
                newUser.setValue(username, forKey: "name") //first param settng
                newUser.setValue(passwordStr, forKey: "password") //second param setting
                do {
                    try context.save() //storing to Entity
                } catch {}
                //calling loginViewController
                let loginVc = self.storyboard?.instantiateViewController(withIdentifier: "loginViewController") as! LoginViewController
                self.navigationController?.pushViewController(loginVc, animated: true)

        }
        
    }
}
