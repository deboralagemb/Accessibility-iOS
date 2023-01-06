//
//  ImagesAttributionViewController.swift
//  accessibility-practice
//
//  Created by Débora Lage on 14/12/22.
//

import UIKit

class ImagesAttributionViewController: UITableViewController {
    
    // MARK: - Properties
    private var models: [FlaticonModel] = [
        FlaticonModel(title: LocalizedStrings.ImagesRef.googleTitle,
                      URL: "https://www.flaticon.com/br/icones-gratis/google"),
        FlaticonModel(title:LocalizedStrings.ImagesRef.twitterTitle,
                      URL: "https://www.flaticon.com/br/icones-gratis/twitter"),
        FlaticonModel(title: LocalizedStrings.ImagesRef.facebookTitle,
                      URL: "https://www.flaticon.com/br/icones-gratis/facebook"),
        FlaticonModel(title: LocalizedStrings.ImagesRef.linkedinTitle,
                      URL: "https://www.flaticon.com/br/stickers-gratis/linkedin")
    ]
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        UIAccessibility.post(notification: .screenChanged, argument: self)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "imageAttributionCell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row].title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let url = models[indexPath.row].URL
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "WebViewController") as? WebViewController else { return }
        vc.url = url
        vc.delegate = self
        present(vc, animated: true)
    }
}

struct FlaticonModel {
    var title: String
    var URL: String
    
    init(title: String, URL: String) {
        self.title = title
        self.URL = URL
    }
}

// MARK: - WebViewControllerDelegate
extension ImagesAttributionViewController: WebViewControllerDelegate {
    func didTapBarButtonItem() {
        dismiss(animated: true)
    }
}
