//
//  ViewController.swift
//  TextView
//
//  Created by Tikhon Bazar on 10.12.22.
//

import UIKit

class ViewController: UIViewController {
    var myTextView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createTextView()
    }
    
    //MARK: - Create TextView
    func createTextView() {
        myTextView = UITextView(frame: CGRect(x: 20, y: 100, width: Int(view.bounds.width) - 50, height: Int(view.bounds.height/2)))
        myTextView.text = "Some text"
        myTextView.contentInset = UIEdgeInsets(top: 50, left: 0, bottom: 0, right: 0)
        myTextView.font = UIFont.systemFont(ofSize: 17)
        myTextView.backgroundColor = .gray
        view.addSubview(myTextView)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        myTextView.resignFirstResponder()
        print("resign")
    }

}

