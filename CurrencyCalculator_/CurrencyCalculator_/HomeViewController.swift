//
//  HomeViewController.swift
//  CurrencyCalculator_
//
//  Created by Mac on 12/07/2023.
//

import UIKit

class HomeViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    let firstCountriesArray = [
        "🇪🇺 Euro (EUR)",
        "🇳🇬 Nigeria (NGN)",
        "🇦🇱 Albania (ALB)",
    ]
    
    let secondCountriesArray = [
        "🇵🇱 Poland (PLN)",
        "🇦🇫 Afghanistan (AFG)",
        "🇩🇿 Algeria (DZA)",
    ]

    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var firstDropDownTextField: UITextField!
    @IBOutlet weak var secondDropDownTextField: UITextField!
    @IBOutlet weak var convertButton: UIButton!
    @IBOutlet weak var averageExchangeRatesLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
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

}
