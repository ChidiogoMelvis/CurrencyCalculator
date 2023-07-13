//
//  NetworkingModel.swift
//  CurrencyCalculator_
//
//  Created by Mac on 13/07/2023.
//

import Foundation

// MARK: - Welcome
class Welcome: Codable {
    let success: Bool
    let terms, privacy: String?
    let timestamp: Int?
    let source: String?
    let quotes: [String: Double]?

    init(success: Bool, terms: String, privacy: String, timestamp: Int, source: String, quotes: [String: Double]) {
        self.success = success
        self.terms = terms
        self.privacy = privacy
        self.timestamp = timestamp
        self.source = source
        self.quotes = quotes
    }
}
