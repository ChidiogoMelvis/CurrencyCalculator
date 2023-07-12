//
//  HomeViewController+Extension.swift
//  CurrencyCalculator_
//
//  Created by Mac on 12/07/2023.
//

import Foundation
import UIKit

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
            return firstCountriesArray[row]
        } else if pickerView == secondDropDownTextField.inputView as? UIPickerView {
            return secondCountriesArray[row]
        }
        return nil
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == firstDropDownTextField.inputView as? UIPickerView {
            firstDropDownTextField.text = firstCountriesArray[row]
        } else if pickerView == secondDropDownTextField.inputView as? UIPickerView {
            secondDropDownTextField.text = secondCountriesArray[row]
        }
    }
}
