//
//  CollectionViewCell.swift
//  SelectCountry
//
//  Created by Tikhon Bazar on 13.02.23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var countryNameLabel: UILabel!
    
    func configure(with countryName: String){
        countryNameLabel.text = countryName
    }
}
