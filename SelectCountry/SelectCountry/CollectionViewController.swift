//
//  CollectionViewController.swift
//  SelectCountry
//
//  Created by Tikhon Bazar on 13.02.23.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    let dataSource : [String] = ["USA", "Brazil", "China", "United Kingdom", "Japan", "Mexico", "India"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        if let countryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell{
            countryCell.configure(with: dataSource[indexPath.row])
            cell = countryCell
        }
        return cell
    }
}
