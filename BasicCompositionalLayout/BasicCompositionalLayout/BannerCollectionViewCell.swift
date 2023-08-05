//
//  BannerCollectionViewCell.swift
//  BasicCompositionalLayout
//
//  Created by 박진성 on 2023/08/02.
//

import UIKit
import SnapKit

class BannerCollectionViewCell: UICollectionViewCell {
    static let id = "BannerCell"
    let titleLabel = UILabel()
    let backgroundImage = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        setupUI()
    }
    
    private func setupUI() {
        //Snapkit
        self.addSubview(titleLabel)
        self.addSubview(backgroundImage)
        
        //constraint 적용
        titleLabel.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        backgroundImage.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
    }
    
    public func config(title: String, imageUrl: String) {
        // title, image set
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
