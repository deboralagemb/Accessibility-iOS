//
//  WebViewController.swift
//  accessibility-practice
//
//  Created by Débora Lage on 30/09/22.
//

import UIKit
import WebKit

protocol WebViewControllerDelegate: AnyObject {
    func didTapBarButtonItem()
}

class WebViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet private var containerView: UIView!
    @IBOutlet private var barButtonItem: UIBarButtonItem!

    // MARK: - Properties
    var url: String?
    var delegate: WebViewControllerDelegate?

    // MARK: - Initialization
    init(with url: String) {
        self.url = url
        super.init(nibName: nil, bundle: nil)
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.url = nil
    }

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureWebView()
        UIAccessibility.post(notification: .screenChanged, argument: self)
    }
    
    // MARK: - Private
    private func configureWebView() {
        let webView = WKWebView()
        webView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(webView)
        containerView.addConstraints([webView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: .zero),
                                      webView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: .zero),
                                      webView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: .zero),
                                      webView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: .zero)])

        if let urlString = self.url, let safeURL = URL(string: urlString) {
            let request = URLRequest(url: safeURL)
            webView.load(request)
        }
    }
    
    // MARK: - Actions
    @IBAction private func didTapBarButtonItem(_ sender: Any) {
        delegate?.didTapBarButtonItem()
    }
}
