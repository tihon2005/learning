//
//  ViewController.swift
//  ImageView
//
//  Created by Tikhon Bazar on 20.12.22.
//

import UIKit

class ViewController: UIViewController {
    var myImageView = UIImageView()
    let macImage = UIImage(named: "macbook")
    let appleImage = UIImage(named: "apple")
    override func viewDidLoad() {
        super.viewDidLoad()
        myImageView = UIImageView(frame: view.bounds)
        myImageView.image = macImage
        myImageView.highlightedImage = appleImage
        myImageView.contentMode = .scaleAspectFit
        myImageView.layer.cornerRadius = 50
        myImageView.layer.borderColor = UIColor.red.cgColor
        myImageView.layer.borderWidth = 5
        myImageView.center = view.center
        view.addSubview(myImageView)
    }


}

