//
//  HomeViewController.swift
//  CurrencyCalculator_
//
//  Created by Mac on 12/07/2023.
//

import UIKit

class HomeViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var menuButton: UIButton!
    
    @IBOutlet weak var signupButton: UIButton!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var firstTextField: UITextField!
    
    @IBOutlet weak var secondTextField: UITextField!
    
    @IBOutlet weak var convertButton: UIButton!
    
    @IBOutlet weak var averageExchangeRatesLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let pickerView = UIPickerView()
        firstTextField.inputView = pickerView
        secondTextField.inputView = pickerView
    }
    
    @IBAction func firstCountryTextFieldDidChange(_ sender: UITextField) {
        
    }
    
    @IBAction func secondCountryTextFieldDidChange(_ sender: UITextField) {
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        <#code#>
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        <#code#>
    }
    
    
}
