//
//  Networking.swift
//  CurrencyCalculator_
//
//  Created by Mac on 13/07/2023.
//

import Foundation
import Alamofire
import SwiftyJSON

//MARK: - The Commented class is a networking call using the imported framework.
//class FetchCurrency {
//    func fetchConversionRate() {
//        let apiKey = "b5528a9e7fb5b4ee0ff0025199583441"
//        let request = AF.request("https://data.fixer.io/api/latest?access_key=\(apiKey)")
//        request.responseJSON { (data) in
//          print(data)
//        }
//      }
//}

//MARK: - Networking using the imported framework
class FetchCurrency {
    func fetchConversionRate(from baseCurrency: String, to targetCurrency: String) {
let urlString =
  "https://api.currencyapi.com/v3/latest?apikey=cur_live_EkbfS1A332A3tlxEoe4rB5DGB8YSlUKF2kxzF8xb"
    
        if let url = URL(string: urlString) {
            let request = AF.request(url)
            request.responseDecodable(of: Welcome.self) { response in
                switch response.result {
                case .success(let data):
                    print(data)
                    if let baseRates = data.quotes as? [String: [String: Double]],
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

