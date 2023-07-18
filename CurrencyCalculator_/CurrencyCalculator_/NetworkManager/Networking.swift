//
//  Networking.swift
//  CurrencyCalculator_
//
//  Created by Mac on 13/07/2023.
//

import Foundation
import Alamofire
import SwiftyJSON

//MARK: - Networking using the imported framework
class FetchCurrency {
    let apiKey = "b45e0fcd78d5427756e67ed9"
    func fetchConversionRate(from baseCurrency: String, to targetCurrency: String) {
        let urlString =
        "https://v6.exchangerate-api.com/v6/\(apiKey)/latest/USD"
        
        if let url = URL(string: urlString) {
            let request = AF.request(url)
            request.responseDecodable(of: Welcome.self) { response in
                switch response.result {
                case .success(let data):
                    print(data)
                    if let baseRates = data.conversionRates as? [String: [String: Double]],
                       let targetRates = baseRates[baseCurrency],
                       let rate = targetRates[targetCurrency] {
                        print("Exchange rate from \(baseCurrency) to \(targetCurrency): \(rate)")
                    } else {
                        print("Conversion rate not available for \(baseCurrency) to \(targetCurrency)")
                    }
                case .failure(let error):
                    print(error)
                }
            }
        } else {
            print("Invalid URL")
        }
    }
}

