//
//  SwinjectBoard+Extensions.swift
//  Rant
//
//  Created by Gil Mishal on 14/01/2020.
//  Copyright © 2020 Rant. All rights reserved.
//

import Foundation
import Swinject
import SwinjectStoryboard
import SwinjectAutoregistration

extension SwinjectStoryboard {
    @objc class func setup() {
        defaultContainer.autoregister(AuthenticationService.self, initializer: AuthenticationService.init).inObjectScope(.container)
        defaultContainer.autoregister(LoadingViewController.self, initializer: LoadingViewController.init(authenticationService:))
    }
}
