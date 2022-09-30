//
//  ColorsViewController.swift
//  accessibility-practice
//
//  Created by Débora Lage on 29/09/22.
//

import UIKit

class ColorsViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet private var badExampleView: UIView!
    @IBOutlet private var badExampleLabel: UILabel!
    @IBOutlet private var goodExampleView: UIView!
    @IBOutlet private var goodExampleLabel: UILabel!

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = NSLocalizedString("Home.Colors.Button", comment: "")
        configureViews()
        //    http://web-accessibility.carnegiemuseums.org/design/color/
    }
    
    // MARK: - Private
    private func configureViews() {
        configureBadExampleView()
        configureGoodExampleView()
    }

    private func configureBadExampleView() {
        badExampleView.backgroundColor = .black
        badExampleLabel.textColor = .darkGray
        badExampleLabel.font = .systemFont(ofSize: 18, weight: .light)
        badExampleLabel.text = NSLocalizedString("Colors.Bad.Example", comment: "")
    }

    private func configureGoodExampleView() {
        goodExampleView.backgroundColor = .lightGray
        goodExampleLabel.textColor = .black
        goodExampleLabel.font = .systemFont(ofSize: 18, weight: .bold)
        goodExampleLabel.text = NSLocalizedString("Colors.Good.Example", comment: "")
    }
}
