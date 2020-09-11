//
//  LoadingViewController.swift
//  Rant
//
//  Created by Gil Mishal on 14/01/2020.
//  Copyright © 2020 Rant. All rights reserved.
//

import UIKit
import Firebase

class LoadingViewController : UIViewController {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //MARK: App life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        if Auth.auth().currentUser == nil {
            performSegue(withIdentifier: "gotoLogin", sender: self)
        } else {
            performSegue(withIdentifier: "gotoMain", sender: self)
        }
    }
}
