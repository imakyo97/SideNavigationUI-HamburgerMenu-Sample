//
//  InformationContentsViewController.swift
//  SideNavigationUI-HamburgerMenu-Sample
//
//  Created by 今村京平 on 2021/07/28.
//

import UIKit

protocol InformationContentsViewControllerDelegate: AnyObject {
    func didTapInformationContentsMenuButton()
}

class InformationContentsViewController: UIViewController {

    weak var delegate: InformationContentsViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        settingMenuBarButtonItem()
    }

    private func settingMenuBarButtonItem() {
        //メニューボタンを作成
        let menuButton = UIBarButtonItem(
            title: "≡",
            style: .plain,
            target: self,
            action: #selector(didTapMenuButton(sender:))
        )

        // メニューボタンのデザイン調整
        let menuAttribute: [NSAttributedString.Key: Any] = [
            .font: UIFont(name: "HiraKakuProN-W3", size: 30)!,
            .foregroundColor: UIColor.gray
        ]

        // メニューボタンのデザインをセット
        menuButton.setTitleTextAttributes(menuAttribute, for: .normal)

        // NavigationViewControllerにボタンをセット
        navigationItem.leftBarButtonItem = menuButton
    }

    @objc private func didTapMenuButton(sender: UIButton) {
        delegate?.didTapInformationContentsMenuButton()
    }
}
