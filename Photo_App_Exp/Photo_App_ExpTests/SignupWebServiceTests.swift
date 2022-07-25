//
//  SignupWebServiceTests.swift
//  Photo_App_ExpTests
//
//  Created by Shak Feizi on 7/25/22.
//

import XCTest
@testable import Photo_App_Exp

class SignupWebServiceTests: XCTestCase {
    var sut: SignupWebService!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = SignupWebService()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testSignupWebService_WhenGivenSuccessfullResponse_ReturnSuccess() {
        // Arrange
        let signupFormRequestModel = SignupFormRequestModel(firstName: "Shak", lastName: "Feizi", email: "test@test.com", password: "12345678")
        // Act
        sut.signup(withForm: signupFormRequestModel) { (signupResponseModel, error) in
            
        }
        // Assert
    }

}
