//
//  LoginInteractor.swift
//  Liverpool
//
//  Created by Carlos Paredes León on 23/02/24.
//

import Foundation
import UIKit

class LoginInteractor: LoginInteractorInteraface {
    
    fileprivate var signInImplementator: SignInCaseUseProtocol
    
    init(signInImplementator: SignInCaseUseProtocol) {
        self.signInImplementator = signInImplementator
    }
    
    var delegate: LoginInteractorOutPutDelegate?
    
    func validate(username: String, password: String) {
        guard !username.isEmpty, !password.isEmpty else {
            delegate?.loginError(with: "Intenta de nuevo llenando los campos")
            return
        }
        delegate?.onValdation()
        
        signInImplementator.signIn(with: username, password: password) { [weak self] user in
            guard let user = user else {
                self?.delegate?.loginError(with: "Datos erroneos")
                return
            }
            
            self?.delegate?.loginWasSuccess(with: user)
        }
    }
}

