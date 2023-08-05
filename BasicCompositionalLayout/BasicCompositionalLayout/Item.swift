//
//  Item.swift
//  BasicCompositionalLayout
//
//  Created by 박진성 on 2023/08/02.
//

import UIKit


//섹션과 아이템 정의
struct Section: Hashable {
    let id: String
}

enum Item: Hashable {
    case banner(HomeItem)
    case normalcarousel(HomeItem)
    case listCarousel(HomeItem)
}

struct HomeItem: Hashable {
    let title: String
    let subTitle: String?
    let imageUrl: String
}
