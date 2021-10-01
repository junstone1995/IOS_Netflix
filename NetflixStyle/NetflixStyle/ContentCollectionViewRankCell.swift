//
//  ContentCollectionViewRankCell.swift
//  NetflixStyle
//
//  Created by Junseok Lee on 2021/10/01.
//

import UIKit

class ContentCollectionViewRankCell: UICollectionViewCell{
    let imageView = UIImageView()
    let rankLabel = UILabel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        //contentView
        contentView.layer.cornerRadius = 5
        contentView.clipsToBounds = true
        
        //image View
        imageView.contentMode = .scaleToFill
        contentView.addSubview(imageView)
        imageView.snp.makeConstraints{
            $0.top.trailing.bottom.equalToSuperview()
            $0.width.equalToSuperview().multipliedBy(0.8)
        }
        
        //rankLabel
    }
}
