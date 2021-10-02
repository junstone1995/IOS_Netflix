//
//  UIButton.swift
//  NetflixStyle
//
//  Created by Junseok Lee on 2021/10/02.
//

import UIKit

extension UIButton{
    func adjustVerticalLayout(_ spacing: CGFloat = 0){
        let imageSize = self.imageView?.frame.size ?? .zero
        let titleLabelSize = self.titleLabel?.frame.size ?? .zero
        
        self.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageSize.width, bottom: -(imageSize.height + spacing), right: 0)
        self.imageEdgeInsets = UIEdgeInsets(top: -(titleLabelSize.height + spacing), left: 0, bottom: 0, right: -titleLabelSize.width)
    }
}
