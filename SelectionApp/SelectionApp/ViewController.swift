//
//  ViewController.swift
//  SelectionApp
//
//  Created by Tikhon Bazar on 14.02.23.
//

import UIKit

class ViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 102
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.label.text = String(indexPath.row + 1)
        if (indexPath.row + 1)%6 == 0{
            cell.backgroundColor = .yellow
        }
        else if (indexPath.row + 1)%3 == 0{
            cell.backgroundColor = .blue
        }
        else if (indexPath.row + 1)%2 == 0{
            cell.backgroundColor = .green
        }else{
            cell.backgroundColor = .red
        }
        return cell
    }
    
}

