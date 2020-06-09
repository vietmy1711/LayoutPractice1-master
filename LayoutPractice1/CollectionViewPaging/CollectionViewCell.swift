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
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configWithColor(_ color: UIColor) {
        vwContainer.backgroundColor = color
    }

}
