//
//  SampleCollectionViewCell.swift
//  CollectionViewHeaderTest
//
//  Created by iMac on 2022/05/02.
//

import Foundation
import SnapKit
import UIKit

final class SampleCollectionViewCell: UICollectionViewCell {
    static let identifier = "SampleCollectionViewCell"

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 30.0, weight: .bold)
        label.textColor = .label
        label.text = "Label"

        return label
    }()

    private lazy var testButton: UIButton = {
        if #available(iOS 15.0, *) {
            var configuration = UIButton.Configuration.filled()
            configuration.title = "Button"
            configuration.buttonSize = .large
            configuration.imagePadding = 5
            let button = UIButton(configuration: configuration, primaryAction: nil)
            button.setTitle("Button", for: .normal)
            button.setTitleColor(.label, for: .normal)
            button.layer.borderWidth = 1.0
            button.layer.borderColor = UIColor.label.cgColor
            button.layer.cornerRadius = 4
            button.layer.masksToBounds = true

            return button
        } else {
            let button = UIButton()
            button.setTitle("Button", for: .normal)
            button.setTitleColor(.label, for: .normal)
            button.layer.borderWidth = 1.0
            button.layer.borderColor = UIColor.label.cgColor
            button.layer.cornerRadius = 4
            button.layer.masksToBounds = true

            return button
        }
    }()

    func setupCell() {
        setupViews()
    }


}

private extension SampleCollectionViewCell {
    func setupViews() {
        backgroundColor = .systemBackground
        [
            titleLabel,
            testButton
        ]
            .forEach {
                addSubview($0)
            }

        let inset: CGFloat = 16.0
        titleLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(inset)
            $0.centerY.equalToSuperview()
        }

        testButton.snp.makeConstraints {
            $0.leading.equalTo(titleLabel.snp.trailing).offset(8.0)
            $0.centerY.equalToSuperview()
            $0.trailing.equalToSuperview().offset(-inset)
        }
    }
}
