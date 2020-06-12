//
//  CollectionViewController.swift
//  LayoutPractice1
//
//  Created by MM on 6/8/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let imageArray: [UIImage] = [
        #imageLiteral(resourceName: "img_2"),
        #imageLiteral(resourceName: "img_1"),
        #imageLiteral(resourceName: "img_3")
    ]
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.isPagingEnabled = true
        pageControl.numberOfPages = imageArray.count
        collectionViewFlowLayout.scrollDirection = .horizontal
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.configWithImage(imageArray[indexPath.row])
        cell.tag = indexPath.row
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let imageViewController = ImageViewController(nibName: "ImageViewController", bundle: nil)
        let img = imageArray[indexPath.row]
        let title = "\(indexPath.row + 1)/\(imageArray.count)"
        imageViewController.navigationItem.title = title
        imageViewController.image = img
        //imageViewController.config(img, title)
        self.navigationController?.pushViewController(imageViewController, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let point = view.convert(collectionView.center, to: collectionView)
        pageControl.currentPage = collectionView.indexPathForItem(at: point)!.row
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let point = view.convert(collectionView.center, to: collectionView)
        pageControl.currentPage = collectionView.indexPathForItem(at: point)!.row
    }
}
