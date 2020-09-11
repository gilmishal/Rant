//
//  LoginViewController.swift
//  Rant
//
//  Created by Gil Mishal on 06/09/2020.
//  Copyright © 2020 Rant. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func loginClick(_ sender: Any) {
        Auth.auth().signIn(withEmail: email.text ?? "", password: password.text ?? ""){ authResult, error in
                if let error = error {
                    let uialert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                    uialert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
                    self.present(uialert, animated: true, completion: nil)
                } else {
                    performSegue(withIdentifier: "gotoMain", sender: self)
                }
            }
    }
}
