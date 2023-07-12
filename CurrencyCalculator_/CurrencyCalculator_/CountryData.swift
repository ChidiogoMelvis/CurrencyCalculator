//
//  CountryData.swift
//  CurrencyCalculator_
//
//  Created by Mac on 12/07/2023.
//

import Foundation
import UIKit
    
    struct CountriesData {
        var name: String
        var currency: String
        var flag: UIImage?
    }

    var countriesData = [
        CountriesData(name: "United States Dollar (USD)", currency: "USD", flag: UIImage(named: "usa")),
        CountriesData(name: "Euro (EUR)", currency: "EUR", flag: UIImage(named: "eu")),
        CountriesData(name: "British Pound (GBP)", currency: "GBP", flag: UIImage(named: "uk")),
        CountriesData(name: "Australian Dollar (AUD)", currency: "AUD", flag: UIImage(named: "australia")),
        CountriesData(name: "Polish Złoty (PLN)", currency: "PLN", flag: UIImage(named: "poland")),
        CountriesData(name: "Nigerian Naira (NGN)", currency: "NGN", flag: UIImage(named: "nigeria"))
    ]

