//
//  LoginRouter.swift
//  Liverpool
//
//  Created by Carlos Paredes León on 23/02/24.
//

import Foundation
import UIKit

struct LoginRouter {
    
    fileprivate weak var baseNavigation: UIViewController?
    
    init(baseNavigation: UIViewController) {
        self.baseNavigation = baseNavigation
    }
    
    func showHome(with user: UserViewModel) {
        guard let navigationController = baseNavigation as? UINavigationController else {
            print("Error can not navigate from login to home without a navigation contoller")
            return
        }
    }
    
}
