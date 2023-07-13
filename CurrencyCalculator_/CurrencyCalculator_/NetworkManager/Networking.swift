//
//  Networking.swift
//  CurrencyCalculator_
//
//  Created by Mac on 13/07/2023.
//

import Foundation
import Alamofire
import SwiftyJSON
import PromiseKit

class FetchCurrency {
    func fetchConversionRate() {
        let apiKey = "b5528a9e7fb5b4ee0ff0025199583441"
        let request = AF.request("https://data.fixer.io/api/latest?access_key=b5528a9e7fb5b4ee0ff0025199583441")
        request.responseJSON { (data) in
          print(data)
        }
      }
}

