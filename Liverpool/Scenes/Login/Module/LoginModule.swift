//
//  LoginModule.swift
//  Liverpool
//
//  Created by Carlos Paredes León on 23/02/24.
//

import Foundation
import UIKit

struct LoginModule {
    weak var viewController: UIViewController?
    
    static func loadModule(with baseNavigation: UIViewController) -> UIViewController {
        
        let signInImplementator = SignInCaseUseImplementator()
        let loginInteractor = LoginInteractor(signInImplementator: signInImplementator)
        let loginPresenter = LoginPresenter()
        let loginRouter = LoginRouter(baseNavigation: baseNavigation)
        let loginView = ViewController()
        
        loginInteractor.delegate = loginPresenter
        
        return loginView
    }
    
}
