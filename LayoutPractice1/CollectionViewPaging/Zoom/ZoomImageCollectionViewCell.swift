//
//  ZoomImageCollectionViewCell.swift
//  LayoutPractice1
//
//  Created by MM on 6/15/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class ZoomImageCollectionViewCell: UICollectionViewCell, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imv: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        scrollView.delegate = self
        scrollView.maximumZoomScale = 10
        let doubleTap =  UITapGestureRecognizer.init(target: self, action: #selector(doubleTappedHandler(recognizer:)))
        doubleTap.numberOfTapsRequired = 2
        scrollView.addGestureRecognizer(doubleTap)
    }

    @objc func doubleTappedHandler(recognizer: UITapGestureRecognizer) {
        if scrollView.zoomScale == 1 {
            scrollView.zoom(to: zoomRectForScale(scale: scrollView.maximumZoomScale, center: recognizer.location(in: recognizer.view)), animated: true)
        } else {
            scrollView.setZoomScale(1, animated: true)
        }
    }
    
    func zoomRectForScale(scale: CGFloat, center: CGPoint) -> CGRect {
        var zoomRect = CGRect.zero
        zoomRect.size.height = imv.frame.size.height / scale
        zoomRect.size.width  = imv.frame.size.width  / scale
        let newCenter = scrollView.convert(center, from: imv)
        zoomRect.origin.x = newCenter.x - (zoomRect.size.width / 2.0)
        zoomRect.origin.y = newCenter.y - (zoomRect.size.height / 2.0)
        return zoomRect
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imv
    }
    
    func configWithImage(_ img: UIImage) {
        imv.image = img
    }
    
}
