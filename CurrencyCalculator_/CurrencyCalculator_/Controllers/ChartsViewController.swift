//
//  GraphViewController.swift
//  CurrencyCalculator_
//
//  Created by Mac on 12/07/2023.
//

import UIKit

//MARK: - Objects Outlets, Configuring of Objects.
class ChartsViewController: UIViewController {
    
    @IBOutlet weak var graphConvertButton: UIButton!
    @IBOutlet weak var averageExchangeRatesLabel:
    UILabel!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var pastThirtyDaysButton: UIButton!
    @IBOutlet weak var pastNinetyDaysButton: UIButton!
    @IBOutlet weak var getRatesButton: UIButton!
    @IBOutlet weak var chartsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cornerRadius: CGFloat = 20.0
        let cornerMask = CACornerMask(arrayLiteral: .layerMinXMinYCorner, .layerMaxXMinYCorner)
        containerView.layer.cornerRadius = cornerRadius
        containerView.layer.maskedCorners = cornerMask
        containerView.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
        
    }
}
