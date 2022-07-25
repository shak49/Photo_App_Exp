//
//  SignupFormModelValidator.swift
//  Photo_App_ExpTests
//
//  Created by Shak Feizi on 7/25/22.
//

import XCTest
@testable import Photo_App_Exp

class SignupFormModelValidatorTests: XCTestCase {
    var sut: SignupFormModelValidator!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = SignupFormModelValidator()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testSignupFormModelValidator_WhenFirstNameProvided_ShouldReturnTrue() {
        // Arrange
        // Act
        let isFirsNameValid = sut.isFirstNameValid(firstName: "Shak")
        // Assert
        XCTAssertTrue(isFirsNameValid, "")
    }
    
    func testSignupFormModelValidator_WhenToShortFirsNameProvided_ShouldReturnFalse() {
        // Arrange
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "S")
        // Assert
        XCTAssertFalse(isFirstNameValid, "")
    }
    
    func testSignupFormModelValidator_WhenToLongFirstNameProvided_ShouldReturnFalse() {
        let isFirstNameValid = sut.isFirstNameValid(firstName: "ShakShakShak")
        XCTAssertFalse(isFirstNameValid, "")
    }

}
