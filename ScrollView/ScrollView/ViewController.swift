//
//  ViewController.swift
//  ScrollView
//
//  Created by Tikhon Bazar on 22.12.22.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    var myScrollView = UIScrollView()
    var myImageView = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        createScrollView()
    }
    
    func createScrollView() {
        myScrollView.indicatorStyle = .black
        let imageToLoad = UIImage(named: "macbook")
        myImageView = UIImageView(image: imageToLoad)
        myScrollView = UIScrollView(frame: view.bounds)
        myScrollView.addSubview(myImageView)
        myScrollView.contentSize = myImageView.bounds.size
        myScrollView.delegate = self
        view.addSubview(myScrollView)
    }
    
    //MARK: - ScrollViewDelegate
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let p = "Начинается прокрутка"
        print(p)
        print(myScrollView.contentOffset.x)
        myScrollView.alpha = 0.50
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let p = "Прошла прокртука"
        print(p)
        myScrollView.alpha = 1
    }
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        let p = "Гарантируется ,что альфа будет снова 1"
        print(p)
        myScrollView.alpha = 1
    }
}

