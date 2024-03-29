//
//  LoginVC.swift
//  DiceRoller
//
//  Created by Michael Litman on 11/20/15.
//  Copyright © 2015 awesomefat. All rights reserved.
//

import UIKit
import Parse

class LoginVC: UIViewController
{

    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool)
    {
        self.usernameTF.becomeFirstResponder()
    }
    
    @IBAction func loginButtonPressed(sender: AnyObject)
    {
    
        PFUser.logInWithUsernameInBackground(self.usernameTF.text!, password:self.passwordTF.text!) {
            (user: PFUser?, error: NSError?) -> Void in
            if user != nil {
                
                print("it worked")
                
            } else {
                print("it didnt work")
            }
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
