//
//  NetworkingModel.swift
//  CurrencyCalculator_
//
//  Created by Mac on 13/07/2023.
//

import Foundation

// MARK: - Welcome
class Welcome: Codable {
    let result: String?
    let documentation, termsOfUse: String?
    let timeLastUpdateUnix: Int?
    let timeLastUpdateUTC: String?
    let timeNextUpdateUnix: Int?
    let timeNextUpdateUTC, baseCode: String?
    let conversionRates: [String: Double]?

    enum CodingKeys: String, CodingKey {
        case result, documentation
        case termsOfUse
        case timeLastUpdateUnix
        case timeLastUpdateUTC
        case timeNextUpdateUnix
        case timeNextUpdateUTC
        case baseCode
        case conversionRates
    }

    init(result: String, documentation: String, termsOfUse: String, timeLastUpdateUnix: Int, timeLastUpdateUTC: String, timeNextUpdateUnix: Int, timeNextUpdateUTC: String, baseCode: String, conversionRates: [String: Double]) {
        self.result = result
        self.documentation = documentation
        self.termsOfUse = termsOfUse
        self.timeLastUpdateUnix = timeLastUpdateUnix
        self.timeLastUpdateUTC = timeLastUpdateUTC
        self.timeNextUpdateUnix = timeNextUpdateUnix
        self.timeNextUpdateUTC = timeNextUpdateUTC
        self.baseCode = baseCode
        self.conversionRates = conversionRates
    }
}

