//
//  CurrencyCalculator_UITests.swift
//  CurrencyCalculator_UITests
//
//  Created by Mac on 12/07/2023.
//

import XCTest

final class CurrencyCalculator_UITests: XCTestCase {
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        
    }
     
    func testConversionAndSegue() throws {
   let  app = XCUIApplication()
        app.launch()
        let editingTextFields = app.textFields["editingTextFields"]
        editingTextFields.tap()
        
                XCTAssertTrue(editingTextFields.exists)
    }
    
    
}
