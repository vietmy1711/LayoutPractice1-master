//
//  ItemViewController.swift
//  LayoutPractice1
//
//  Created by MM on 6/15/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var data: [UIImage] = []
    var index: IndexPath?
    var scrollToIndexFinished = false
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.isPagingEnabled = true
        collectionViewFlowLayout.scrollDirection = .horizontal
        collectionView.register(UINib(nibName: "ZoomImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ZoomImageCollectionViewCell")
    }
    
    override func viewWillLayoutSubviews() {
        
        super.viewWillLayoutSubviews()
        
        if (!self.scrollToIndexFinished) {
            
            self.scrollToIndexFinished = true
            self.collectionView.scrollToItem(at: index!, at: .centeredHorizontally, animated: false)
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ZoomImageCollectionViewCell", for: indexPath) as! ZoomImageCollectionViewCell
        cell.configWithImage(data[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 200)
    }
    
    func configWithData(_ data: [UIImage], _ index: IndexPath) {
        self.data = data
        self.index = index
        self.navigationItem.title = "\(index.row+1)/\(data.count)"
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let point = view.convert(collectionView.center, to: collectionView)
        let idx = collectionView.indexPathForItem(at: point)!.row
        self.navigationItem.title = "\(idx+1)/\(data.count)"
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let point = view.convert(collectionView.center, to: collectionView)
        let idx = collectionView.indexPathForItem(at: point)!.row
        self.navigationItem.title = "\(idx+1)/\(data.count)"
    }
}
