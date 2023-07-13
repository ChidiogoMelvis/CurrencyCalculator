//
//  HomeViewController.swift
//  CurrencyCalculator_
//
//  Created by Mac on 12/07/2023.
//

import UIKit
import RealmSwift
import Realm
import Alamofire
import SwiftyJSON

class HomeViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var firstAmountTextField: UITextField!
    @IBOutlet weak var secondAmountTextField: UITextField!
    @IBOutlet weak var firstDropDownTextField: UITextField!
    @IBOutlet weak var secondDropDownTextField: UITextField!
    @IBOutlet weak var convertButton: UIButton!
    @IBOutlet weak var averageExchangeRatesLabel: UILabel!
    
    let realm = try! Realm()

    override func viewDidLoad() {
        super.viewDidLoad()
        FetchCurrency().fetchConversionRate()
        configurePickerview()
        firstAmountTextField.delegate = self
        secondAmountTextField.delegate = self

    }
    
    func configurePickerview() {
        dismissPickerView(for: firstDropDownTextField)
        dismissPickerView(for: secondDropDownTextField)

        let firstPickerView = UIPickerView()
        firstPickerView.delegate = self
        firstPickerView.dataSource = self
        firstDropDownTextField.inputView = firstPickerView

        let secondPickerView = UIPickerView()
        secondPickerView.delegate = self
        secondPickerView.dataSource = self
        secondDropDownTextField.inputView = secondPickerView
    }
    
    @IBAction func firstCountryTextFieldDidChange(_ sender: UITextField) {
        
    }
    
    @IBAction func secondCountryTextFieldDidChange(_ sender: UITextField) {
        
    }
    
    @IBAction func convertButtonTapped(_ sender: UIButton) {
           
        }
    
    func saveConversionToRealm(amount: Double, sourceCurrency: String, targetCurrency: String, result: Double) {
        do {
            let realm = try Realm()
            let conversion = CurrencyConversion()
            conversion.amount = amount
            conversion.sourceCurrency = sourceCurrency
            conversion.targetCurrency = targetCurrency
            conversion.result = result
            
            try realm.write {
                realm.add(conversion)
            }
            
            DispatchQueue.main.async {
                self.firstAmountTextField.text = String(format: "%.2f", amount)
                self.secondAmountTextField.text = String(format: "%.2f", result)
            }
            
        } catch {
            print("Error saving conversion to Realm: \(error)")
        }
    }

}
