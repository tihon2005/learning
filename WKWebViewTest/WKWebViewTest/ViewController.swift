//
//  ViewController.swift
//  WKWebViewTest
//
//  Created by Tikhon Bazar on 19.02.23.
//

import UIKit
import WebKit

class ViewController: UIViewController, UIWebViewDelegate, WKNavigationDelegate, WKUIDelegate {

    @IBOutlet weak var webview: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webview.uiDelegate = self
        let urlString = "https://google.com"
        webview.load(URLRequest.init(url: URL(string: urlString)!))
    }
    //MARK: Webview delegate methods
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("Finished")
    }
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("Start")
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        print(webview.url?.absoluteString)
        decisionHandler(.allow)
    }
}

