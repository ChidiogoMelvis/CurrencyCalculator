//
//  GraphViewController.swift
//  CurrencyCalculator_
//
//  Created by Mac on 12/07/2023.
//

import UIKit
//MARK: - Objects Outlets, Configuring of Objects.
class GraphViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var graphConvertButton: UIButton!
    
    @IBOutlet weak var averageExchangeRatesLabel:
    UILabel!
    
    @IBOutlet weak var graphView: UIView!
    
    @IBOutlet weak var pastThirtyDaysButton: UIButton!
    
    @IBOutlet weak var pastNinetyDaysButton: UIButton!
    
    @IBOutlet weak var graphCollectionView: UICollectionView!
    
    @IBOutlet weak var getRatesButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        let cornerRadius: CGFloat = 20.0
        let cornerMask = CACornerMask(arrayLiteral: .layerMinXMinYCorner, .layerMaxXMinYCorner)
        graphView.layer.cornerRadius = cornerRadius
        graphView.layer.maskedCorners = cornerMask
        configureCollectionView()
        graphView.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
      
    }
    
    func configureCollectionView() {
        graphCollectionView.dataSource = self
        graphCollectionView.delegate = self
        graphCollectionView.register(GraphCollectionViewCell.self, forCellWithReuseIdentifier: "GraphCollectionViewCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GraphCollectionViewCell", for: indexPath) as! GraphCollectionViewCell
        return cell
    }
    

}
