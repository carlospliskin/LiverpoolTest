//
//  LoginPresenter.swift
//  Liverpool
//
//  Created by Carlos Paredes León on 23/02/24.
//

import Foundation

class LoginPresenter: LoginPresenterInterface {

    fileprivate var loginState: LoginState = .idle
    
    var loginStateBlock: LoginViewStateBlock?
    
    var usernamePlaceHolder: String {
        return "Introduce tu email"
    }
    
}

extension LoginPresenter: LoginInteractorOutPutDelegate {

    func loginError(with errorMessage: String) {
        loginState = .error(message: errorMessage)
        loginStateBlock?(loginState)
    }
    
    func loginWasSuccess(with user: UserProtocol) {
        var userViewModel = UserViewModel(with: user)
        userViewModel.greeting = "Hola bienvenido al home"
        
        loginState = .success(user: userViewModel)
        loginStateBlock?(loginState)
    }
    
    func onValdation() {
        loginState = .validating
        loginStateBlock?(loginState)
    }
    
}
