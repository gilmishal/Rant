//
//  LoadingViewController.swift
//  Rant
//
//  Created by Gil Mishal on 14/01/2020.
//  Copyright © 2020 Rant. All rights reserved.
//

import UIKit
import SwinjectStoryboard

class LoadingViewController : UIViewController {
    
    let authenticationService: AuthenticationService!
    
    init(authenticationService: AuthenticationService!){
        self.authenticationService=authenticationService;
        super.init(nibName: "LoadingViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) is not supported")
    }
    
    //MARK: App life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

            if authenticationService.isUserLoggedIn() {
            } else {
                moveToLogin()
            }
        }
    
    func moveToLogin(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginNavigationContoller") as! UINavigationController
        loginVC.modalPresentationStyle = .custom
        loginVC.modalTransitionStyle = .crossDissolve
        
        self.present(loginVC, animated: true, completion: nil)
    }
    
}
