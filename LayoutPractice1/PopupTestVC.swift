//
//  PopupTestVC.swift
//  LayoutPractice1
//
//  Created by Nguyen Toan on 5/18/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class PopupTestVC: UIViewController {

    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        btn.layer.cornerRadius = 4
        btn.backgroundColor = UIColor(red: 71/255, green: 171/255, blue: 240/255, alpha: 1)
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
