//
//  ViewController.swift
//  BasicCompositionalLayout
//
//  Created by 박진성 on 2023/08/02.
//

import UIKit

class ViewController: UIViewController {

    
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: .init())
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.register(BannerCollectionViewCell.self, forCellWithReuseIdentifier: BannerCollectionViewCell.id)
        collectionView.setCollectionViewLayout(createLayout(), animated: true)
        
    }
    
    private func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout(sectionProvider: {[weak self] sectionIndex, _ in
            
            return self?.createBannerSection()
        })
    }
        
    private func createBannerSection() -> NSCollectionLayoutSection {
        //item
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        //group
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(200))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        //section
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        return section
        }
        
        
    }



    
    
    // 컬렉션뷰 cell UI - 등록
    // 레이아웃 구현 - 3가지
    // datasource -> cellProvider
    // snapshot -> datasource.apply(snapshot)
    
    
    
    
}

