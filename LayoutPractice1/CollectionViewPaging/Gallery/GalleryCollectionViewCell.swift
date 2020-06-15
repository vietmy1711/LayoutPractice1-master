//
//  GalleryCollectionViewCell.swift
//  LayoutPractice1
//
//  Created by MM on 6/15/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imv: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configWithImg(_ img: UIImage) {
        imv.image = img
    }
}
