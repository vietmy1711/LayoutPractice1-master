//
//  CollectionViewCell.swift
//  LayoutPractice1
//
//  Created by MM on 6/9/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var vwContainer: UIView!
    @IBOutlet weak var imv: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configWithImage(_ img: UIImage) {
        imv.image = img
    }

}
