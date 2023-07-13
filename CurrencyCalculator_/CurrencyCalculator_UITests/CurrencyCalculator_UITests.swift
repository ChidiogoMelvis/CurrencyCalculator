//
//  CurrencyCalculator_UITests.swift
//  CurrencyCalculator_UITests
//
//  Created by Mac on 12/07/2023.
//

import XCTest

final class CurrencyCalculator_UITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        
    }
     
    func testConversionAndSegue() throws {
        app = XCUIApplication()
        app.launch()
        
       
    }
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
