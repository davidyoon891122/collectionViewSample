//
//  SampleCollectionViewFooter.swift
//  CollectionViewHeaderTest
//
//  Created by iMac on 2022/05/02.
//

import Foundation
import SnapKit
import UIKit

final class SampleCollectionViewFooter: UICollectionReusableView {
    static let identifier = "SampleCollectionViewFooter"
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Footter"
        label.font = .systemFont(ofSize: 30.0, weight: .bold)
        label.textColor = .gray
        return label
    }()

    func setupFooter() {
        setupViews()
    }
}

private extension SampleCollectionViewFooter {
    func setupViews() {
        backgroundColor = .purple
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
