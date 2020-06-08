//
//  ViewController.swift
//  LayoutPractice1
//
//  Created by MM on 5/15/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let itemsForTopRight = ["First", "Second", "Third"]
    
    let vwTop = UIView()
    
    let lblTopLeft = UILabel()
    
    let dropDown = UIButton()
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(BigTableViewCell.self, forCellReuseIdentifier: "BigTableViewCell")
        setupUI()
        
    }
    func setupUI() {
        vwTop.backgroundColor = UIColor(red: 60.0/255, green: 71.0/255, blue: 82.0/255, alpha: 1)
        view.addSubview(vwTop)
        vwTop.translatesAutoresizingMaskIntoConstraints = false
        vwTop.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        vwTop.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        vwTop.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        vwTop.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        vwTop.addSubview(lblTopLeft)
        vwTop.addSubview(dropDown)
        
        lblTopLeft.text = "Top Left"
        lblTopLeft.font = UIFont(name: "Helvetica-Bold", size: 16)
        lblTopLeft.textColor = .white
        lblTopLeft.translatesAutoresizingMaskIntoConstraints = false
        //lblTopLeft.topAnchor.constraint(equalTo: vwTop.topAnchor, constant: 10).isActive = true
        lblTopLeft.leftAnchor.constraint(equalTo: vwTop.leftAnchor, constant: 12).isActive = true
        lblTopLeft.bottomAnchor.constraint(equalTo: vwTop.bottomAnchor, constant: -12).isActive = true
        
        dropDown.setTitle("\(itemsForTopRight[0]) ", for: .normal)
        dropDown.setImage(UIImage(systemName: "chevron.down"), for: .normal)
        dropDown.semanticContentAttribute = .forceRightToLeft
        dropDown.tintColor = .white
        dropDown.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 16)
        dropDown.addTarget(self, action: #selector(topRightDropDownClicked), for: .touchUpInside)
        
        dropDown.translatesAutoresizingMaskIntoConstraints = false
        dropDown.rightAnchor.constraint(equalTo: vwTop.rightAnchor, constant: -12).isActive = true
        //dropDown.leftAnchor.constraint(equalTo: vwTop.leftAnchor, constant: 12).isActive = true
        dropDown.bottomAnchor.constraint(equalTo: vwTop.bottomAnchor, constant: -8).isActive = true
        
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(red: 245/255, green: 248/255, blue: 251/255, alpha: 1)
        
        tableView.topAnchor.constraint(equalTo: vwTop.bottomAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true

    }
    
//    @objc func topRightDropDownClicked() {
//        let popupVC = PopupViewController()
//        popupVC.isRight = true
//        popupVC.data = itemsForTopRight
//        popupVC.delegate = self
//        popupVC.modalPresentationStyle = .popover
//        popupVC.view.backgroundColor = .clear
//        popupVC.preferredContentSize = CGSize(width: 200, height: 300)
//        self.present(popupVC, animated: true, completion: nil)
//
//       //
//        //popupVC.configView(rect: CGRect(x: 0, y: 0, width: 200, height: 300))
//
//        let controller = popupVC.popoverPresentationController
//        controller?.delegate = self
//        controller?.sourceView = self.dropDown
//        controller?.permittedArrowDirections = UIPopoverArrowDirection.left
//        controller?.sourceRect = self.dropDown.bounds
////
////
////        self.present(popupVC, animated: true, completion: nil)
//    }
    
    @objc func topRightDropDownClicked() {
        let popupTestVC = PopupTestVC(nibName: "PopupTestVC", bundle: nil);
        popupTestVC.modalPresentationStyle = .popover

        if let popover = popupTestVC.popoverPresentationController
        {
            popover.sourceView = self.dropDown
            popover.sourceRect = self.dropDown.bounds
            popover.delegate = self
        }
        popupTestVC.preferredContentSize = CGSize(width: 242, height: 152)
        self.present(popupTestVC, animated: true)
    }

}

extension ViewController: PopupViewControllerDelegate {
    func sendDataBack(choice: String) {
        dropDown.setTitle("\(choice) ", for: .normal)
        
    }
    
}

extension ViewController: UIPopoverPresentationControllerDelegate, UIPopoverControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.none

    }

    func prepareForPopoverPresentation(_ popoverPresentationController: UIPopoverPresentationController) {
//        popoverPresentationController.sourceView = self.view
//        popoverPresentationController.sourceRect = CGRect(x: 30, y: 30, width: 200, height: 230)
//        popoverPresentationController.permittedArrowDirections = UIPopoverArrowDirection(rawValue: 0)

    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BigTableViewCell", for: indexPath) as! BigTableViewCell
        cell.selectionStyle = .none
        
        if indexPath.row == 0 {
            cell.configWithImage(img: UIImage(named: "img")!)
        }
        
        return cell
    }

}
