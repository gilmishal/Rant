//
//  RegistrationViewController.swift
//  Rant
//
//  Created by Gil Mishal on 06/09/2020.
//  Copyright © 2020 Rant. All rights reserved.
//

import UIKit
import Firebase

class RegistrationViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClick(_ sender: Any) {
        Auth.auth().createUser(withEmail: username.text ?? "", password: password.text ?? ""){ authResult, error in
            if let error = error {
                let uialert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                    uialert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
                    self.present(uialert, animated: true, completion: nil)
            } else {
                performSegue(withIdentifier: "gotoMain", sender: self)
            }
        }
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
