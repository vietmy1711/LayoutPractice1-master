//
//  PopupViewController.swift
//  LayoutPractice1
//
//  Created by MM on 5/15/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

protocol PopupViewControllerDelegate {
    func sendDataBack(choice: String)
}

class PopupViewController: UIViewController {
    
    var isRight = true
    var data: [String] = []
    var delegate: PopupViewControllerDelegate?
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        setupUI()
    }
    
    func setupUI() {
       // if isRight == true {
           // view.frame = CGRect(x: 30, y: 30, width: 300, height: 300)
        //}
        //self.preferredContentSize = CGSize(width: 200, height: 200)

        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
       // tableView.bounds = view.bounds
//
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        //tableView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        //tableView.heightAnchor.constraint(equalToConstant: 100).isActive = true

    }
    
    func configView(rect: CGRect) {
        view.frame = rect
    }
}

extension PopupViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = self.data[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.sendDataBack(choice: data[indexPath.row])
        self.dismiss(animated: true, completion: nil)
    }
    
}

