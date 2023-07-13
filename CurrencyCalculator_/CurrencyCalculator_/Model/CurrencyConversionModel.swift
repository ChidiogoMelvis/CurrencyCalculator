//
//  RealmModel.swift
//  CurrencyCalculator_
//
//  Created by Mac on 13/07/2023.
//

import Foundation
import UIKit
import RealmSwift

class CurrencyConversion: Object {
    @Persisted var amount: Double = 0.0
    @Persisted var sourceCurrency: String = ""
    @Persisted var targetCurrency: String = ""
    @Persisted var result: Double = 0.0
    }




