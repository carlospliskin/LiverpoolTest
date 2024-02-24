//
//  LoginInteractorInterface.swift
//  Liverpool
//
//  Created by Carlos Paredes León on 23/02/24.
//

import Foundation

protocol LoginInteractorOutPutDelegate {
    func loginWasSuccess(with user: UserProtocol)
    func loginError(with errorMessage: String)
    func onValdation()
}

protocol LoginInteractorInteraface {
    var delegate: LoginInteractorOutPutDelegate? { get set }
    func validate(username: String, password: String)
}
