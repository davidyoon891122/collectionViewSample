//
//  SampleCollectionViewHeader.swift
//  CollectionViewHeaderTest
//
//  Created by iMac on 2022/05/02.
//

import Foundation
import SnapKit
import UIKit

final class SampleCollectionViewHeader: UICollectionReusableView {
    static let identifier = "SampleCollectionViewHeader"
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Header"
        label.font = .systemFont(ofSize: 50.0, weight: .bold)
        label.textColor = .lightGray
        return label
    }()

    func setupHeader() {
        print("setupHeader")
        setupViews()
    }
}

private extension SampleCollectionViewHeader {
    func setupViews() {
        backgroundColor = .yellow
        [
            titleLabel
        ]
            .forEach {
                addSubview($0)
            }

        let inset: CGFloat = 16.0

        titleLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(inset)
            $0.centerY.equalToSuperview()
        }
    }
}
