//
//  CountryNameModel.swift
//  CurrencyCalculator_
//
//  Created by Mac on 13/07/2023.
//

import Foundation
import Realm
import RealmSwift

class Country: Object {
    @Persisted var name: String = ""

    convenience init(name: String) {
        self.init()
        self.name = name
    }
}

let firstCountriesArray = [
    Country(name: "EUR"),
    Country(name: "PLN"),
]

let secondCountriesArray = [
    Country(name: "EUR"),
    Country(name: "PLN"),
]
