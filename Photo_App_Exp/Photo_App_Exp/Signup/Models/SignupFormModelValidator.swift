//
//  SignupFormModelValidator.swift
//  Photo_App_Exp
//
//  Created by Shak Feizi on 7/25/22.
//

import UIKit


class SignupFormModelValidator {
    
    func isFirstNameValid(firstName: String) -> Bool {
        var returnValue = true
        if firstName.count < SignupConstants.firstNameMinLength || firstName.count > SignupConstants.firstNameMaxLength {
            returnValue = false
        }
        return returnValue
    }
}
