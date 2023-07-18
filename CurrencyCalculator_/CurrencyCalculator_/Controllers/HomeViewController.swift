//
//  HomeViewController.swift
//  CurrencyCalculator_
//
//  Created by Mac on 12/07/2023.
//

import UIKit
import RealmSwift
import Realm

//MARK: - Objects Outlets, IBAction, Configuring of Objects.
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
        fetchNetworking()
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
    
    func fetchNetworking() {
        FetchCurrency().fetchConversionRate(from: "EUR", to: "PLN")
    }
    
    @IBAction func convertButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "HomeViewControllerIdentifier", sender: self)
        
    }
    
    //MARK: - This segues from the current ViewController to the next Viewcontroller based on which was stated.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "HomeViewControllerIdentifier" {
            if let destinationVC = segue.destination as?
                ChartsViewController{
                destinationVC.modalPresentationStyle = .fullScreen
            }
        }
    }
    
}
