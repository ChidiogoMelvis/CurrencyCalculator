//
//  HomeViewController+Extension.swift
//  CurrencyCalculator_
//
//  Created by Mac on 12/07/2023.
//

import Foundation
import UIKit
import Realm

extension HomeViewController {
    
    func dismissPickerView(for textField: UITextField) {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let button = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(action))
        toolBar.setItems([button], animated: true)
        toolBar.isUserInteractionEnabled = true
        textField.inputAccessoryView = toolBar
    }
    
    @objc func action() {
        view.endEditing(true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == firstDropDownTextField.inputView as? UIPickerView {
            return firstCountriesArray.count
        } else if pickerView == secondDropDownTextField.inputView as? UIPickerView {
            return secondCountriesArray.count
        }
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == firstDropDownTextField.inputView as? UIPickerView {
            return firstCountriesArray[row].name
        } else if pickerView == secondDropDownTextField.inputView as? UIPickerView {
            return secondCountriesArray[row].name
        }
        return nil
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == firstDropDownTextField.inputView as? UIPickerView {
            let selectedCountry = firstCountriesArray[row]
            firstDropDownTextField.text = selectedCountry.name
        } else if pickerView == secondDropDownTextField.inputView as? UIPickerView {
            let selectedCountry = secondCountriesArray[row]
            secondDropDownTextField.text = selectedCountry.name
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }
}
