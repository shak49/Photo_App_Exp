//
//  SignupWebServiceTests.swift
//  Photo_App_ExpTests
//
//  Created by Shak Feizi on 7/25/22.
//

import XCTest
@testable import Photo_App_Exp

class SignupWebServiceTests: XCTestCase {
    //var sut: SignupWebService!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        //sut = SignupWebService(urlString: "http://appsdeveloperblog.com:8080/signup-mock-service/users")
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        //sut = nil
    }

    func testSignupWebService_WhenGivenSuccessfullResponse_ReturnSuccess() {
        // Arrange
        let sut = SignupWebService(urlString: "http://appsdeveloperblog.com:8080/signup-mock-service/users")
        let signupFormRequestModel = SignupFormRequestModel(firstName: "Shak", lastName: "Feizi", email: "test@test.com", password: "12345678")
        let expectation = self.expectation(description: "Signup web service response expectation")
        // Act
        sut.signup(withForm: signupFormRequestModel) { (signupResponseModel, error) in
            // Assert
            XCTAssertEqual(signupResponseModel?.status, "ok")
            expectation.fulfill()
        }
        self.wait(for: [expectation], timeout: 5)
    }

}
