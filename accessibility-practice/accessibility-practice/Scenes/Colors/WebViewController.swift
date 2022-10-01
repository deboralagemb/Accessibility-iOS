//
//  WebViewController.swift
//  accessibility-practice
//
//  Created by Débora Lage on 30/09/22.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKUIDelegate {

    // MARK: - Properties
    private var webView: WKWebView!
    
    // MARK: - Life cycle
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string:"https://designsystem.digital.gov/design-tokens/color/overview/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}
