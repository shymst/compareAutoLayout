//
//  StoryboardViewController.swift
//  compareAutoLayout
//
//  Created by Shunya Yamashita on 2017/06/05.
//  Copyright © 2017年 Shunya Yamashita. All rights reserved.
//

import UIKit

class StoryboardViewController: UIViewController {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UIButton!
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var menuSegmentedControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Storyboard"
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        iconImageView.layer.cornerRadius = iconImageView.bounds.width / 4
        actionButton.layer.cornerRadius = 5
        actionButton.layer.borderWidth = 1
        actionButton.layer.borderColor = actionButton.tintColor.cgColor
    }
}
