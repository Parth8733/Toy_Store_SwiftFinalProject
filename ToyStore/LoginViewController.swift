//
//  LoginViewController.swift
//  ToyStore
//
//  Created by Sahajpal Singh on 2020-12-13.
//  Copyright © 2020 Parth Patel. All rights reserved.
//

import UIKit
import CoreData

class LoginViewController: UIViewController {
    //refernce to manage context
    let context  = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    @IBOutlet weak var userNameTxtView: UITextField!
    @IBOutlet weak var passwordTxtView: UITextField!
    var users:[User]!
    var username:String!
    var passwordStr:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //fetching particular user from User Entity
    func fetchUsers()
    {
        username = userNameTxtView.text! //user value from textView
        passwordStr = passwordTxtView.text! //password value from textView
        
            //creating request
            let request = NSFetchRequest<User>(entityName: "User")
            //seting the filter to the data
            request.predicate = NSPredicate (format: "name == %@", username!)
            do{
                 users = try context.fetch(request) //try to fetch particular user
                if users.count > 0 //if we found User
                {
                    //varifying password
                    if(users[0].password == passwordStr){
                        //Calling HomeViewController
                        let homeVc = self.storyboard?.instantiateViewController(withIdentifier: "tabBarController") as! UITabBarController
                        self.navigationController?.pushViewController(homeVc, animated: true)
                    }
                        //password incorrect alert
                    else{
                        let alertController1 = UIAlertController (title: "Password Not matched", message: "password incorrect ", preferredStyle: UIAlertController.Style.alert)
                        alertController1.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                        present(alertController1, animated: true, completion: nil)
                    }
                }
                    //no user found alert
                else{
                    let alertController1 = UIAlertController (title: "no user found ", message: "username incorrect ", preferredStyle: UIAlertController.Style.alert)
                    alertController1.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    present(alertController1, animated: true, completion: nil)
            }
        }
        catch{
            print(error) //printing error to console
        }
    }
    @IBAction func loginButton(_ sender: Any) {
     fetchUsers() //calling fetchUser method
    }
    @IBAction func registerButton(_ sender: Any) {
        //navigating to registerViewController
        let registerVc = self.storyboard?.instantiateViewController(withIdentifier: "registerViewController") as! RegisterViewController
        self.navigationController?.pushViewController(registerVc, animated: true)

    }
    
}
