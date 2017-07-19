//
//  NSLayoutAnchorViewController.swift
//  compareAutoLayout
//
//  Created by Shunya Yamashita on 2017/05/24.
//  Copyright © 2017年 Shunya Yamashita. All rights reserved.
//

import UIKit

class NSLayoutAnchorViewController: UIViewController {

    let iconImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "NSLayoutAnchor"
        view.backgroundColor = UIColor.white


        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.backgroundColor = UIColor.lightGray

        view.addSubview(iconImageView)

        iconImageView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 15).isActive = true
        iconImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        iconImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 2/7).isActive = true
        iconImageView.heightAnchor.constraint(equalTo: iconImageView.widthAnchor).isActive = true

        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Twitter"
        titleLabel.font = UIFont.systemFont(ofSize: 17)
        view.addSubview(titleLabel)

        titleLabel.topAnchor.constraint(equalTo: iconImageView.topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 10).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true

        let authorLabel = UILabel()
        authorLabel.translatesAutoresizingMaskIntoConstraints = false
        authorLabel.text = "Twitter Inc. >"
        authorLabel.textColor = UIColor.darkGray
        authorLabel.font = UIFont.systemFont(ofSize: 15)
        view.addSubview(authorLabel)

        authorLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor).isActive = true
        authorLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 10).isActive = true
        authorLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true

        let actionButton = UIButton()
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        let attributes: [String : Any] = [
            NSFontAttributeName: UIFont.systemFont(ofSize: 14, weight: UIFontWeightMedium),
            NSForegroundColorAttributeName: actionButton.tintColor
        ]
        let attributedString = NSAttributedString(string: "GET", attributes: attributes)
        actionButton.setAttributedTitle(attributedString, for: .normal)
        actionButton.contentEdgeInsets = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        actionButton.layer.cornerRadius = 5
        actionButton.layer.borderWidth = 1
        actionButton.layer.borderColor = actionButton.tintColor.cgColor
        view.addSubview(actionButton)

        actionButton.bottomAnchor.constraint(equalTo: iconImageView.bottomAnchor).isActive = true
        actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true

        let items = ["Details", "Reviews", "Related"]
        let menuSegmentedControl = UISegmentedControl(items: items)
        menuSegmentedControl.translatesAutoresizingMaskIntoConstraints = false
        menuSegmentedControl.tintColor = UIColor.gray
        menuSegmentedControl.selectedSegmentIndex = 0
        view.addSubview(menuSegmentedControl)

        menuSegmentedControl.topAnchor.constraint(equalTo: iconImageView.bottomAnchor, constant: 15).isActive = true
        menuSegmentedControl.leadingAnchor.constraint(equalTo: iconImageView.leadingAnchor).isActive = true
        menuSegmentedControl.trailingAnchor.constraint(equalTo: actionButton.trailingAnchor).isActive = true
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        /// AutoLayout適応後に処理する
        iconImageView.layer.cornerRadius = iconImageView.bounds.width / 4
    }
}
