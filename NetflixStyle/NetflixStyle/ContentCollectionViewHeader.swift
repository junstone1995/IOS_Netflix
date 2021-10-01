//
//  ContentCollectionViewHeader.swift
//  NetflixStyle
//
//  Created by Junseok Lee on 2021/10/01.
//

import UIKit

class ContentCollectionViewHeader: UICollectionReusableView {
    let sectionNameLabel = UILabel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        sectionNameLabel.font = .systemFont(ofSize: 17, weight: .bold)
        sectionNameLabel.textColor = .white
        sectionNameLabel.sizeToFit()
        
        addSubview(sectionNameLabel)
        
        sectionNameLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.bottom.leading.equalToSuperview().offset(10)
        }
    }
}
