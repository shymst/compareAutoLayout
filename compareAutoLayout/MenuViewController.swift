//
//  MenuViewController.swift
//  compareAutoLayout
//
//  Created by Shunya Yamashita on 2017/05/24.
//  Copyright © 2017年 Shunya Yamashita. All rights reserved.
//

import UIKit

enum Item: String {
    case storyboard = "Storyboard"
    case nsLayoutAnchor = "NSLayoutAnchor"

    static let all = [storyboard, nsLayoutAnchor]
}

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Menu"
        view.backgroundColor = UIColor.white

        for (index, item) in Item.all.enumerated() {
            let button = UIButton()
            button.backgroundColor = UIColor.blue
            button.setTitle(item.rawValue, for: .normal)
            button.setTitleColor(UIColor.white, for: .normal)
            button.addTarget(self, action: #selector(MenuViewController.didTapButton(_:)), for: .touchUpInside)
            button.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(button)

            button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
            button.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: CGFloat(100 * (index + 1))).isActive = true
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        }
    }

    @objc private func didTapButton(_ sender: UIButton) {
        guard
            let title = sender.currentTitle,
            let item = Item(rawValue: title)
            else { return }

        switch item {
        case .storyboard:
            let storyboard: UIStoryboard = UIStoryboard(name: "StoryboardViewController", bundle: nil)
            let destinationViewController = storyboard.instantiateViewController(withIdentifier: "StoryboardViewController") as! StoryboardViewController
            navigationController?.pushViewController(destinationViewController, animated: true)
        case .nsLayoutAnchor:
            print(item.rawValue)
        }
    }
}

