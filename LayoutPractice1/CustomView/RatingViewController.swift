//
//  RatingViewController.swift
//  LayoutPractice1
//
//  Created by MM on 6/8/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class RatingViewController: UIViewController {

    let vwRating = RatingStarView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()
    }

    func setupUI() {
        view.addSubview(vwRating)
        
        vwRating.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        
         vwRating.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
