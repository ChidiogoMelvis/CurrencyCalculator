//
//  Networking.swift
//  CurrencyCalculator_
//
//  Created by Mac on 13/07/2023.
//

import Foundation
import Alamofire
import SwiftyJSON

//class FetchCurrency {
//    func fetchConversionRate() {
//        let apiKey = "b5528a9e7fb5b4ee0ff0025199583441"
//        let request = AF.request("https://data.fixer.io/api/latest?access_key=\(apiKey)")
//        request.responseJSON { (data) in
//          print(data)
//        }
//      }
//}

class FetchCurrency {
    func fetchConversionRate(from baseCurrency: String, to targetCurrency: String) {
       //let apiKey = "f1ff5e0f7176f7c170fd383cd185cd9b"
        //let apiKey = "b45e0fcd78d5427756e67ed9"
let urlString = //"https://apilayer.net/api/live?access_key=\(apiKey)&currencies=EUR,GBP,CAD,PLN&source=USD&format=1"
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

