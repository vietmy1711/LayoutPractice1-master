//
//  RatingStarView.swift
//  LayoutPractice1
//
//  Created by MM on 6/8/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class RatingStarView: UIView {
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let btnStar1: UIButton = {
        let btn = UIButton()
        btn.tag = 1
        btn.setImage(UIImage(systemName: "star"), for: .normal)
        btn.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        btn.tintColor = .systemOrange
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let btnStar2: UIButton = {
        let btn = UIButton()
        btn.tag = 2
        btn.setImage(UIImage(systemName: "star"), for: .normal)
        btn.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        btn.tintColor = .systemOrange
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let btnStar3: UIButton = {
        let btn = UIButton()
        btn.tag = 3
        btn.setImage(UIImage(systemName: "star"), for: .normal)
        btn.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        btn.tintColor = .systemOrange
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let btnStar4: UIButton = {
        let btn = UIButton()
        btn.tag = 4
        btn.setImage(UIImage(systemName: "star"), for: .normal)
        btn.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        btn.tintColor = .systemOrange
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let btnStar5: UIButton = {
        let btn = UIButton()
        btn.tag = 5
        btn.setImage(UIImage(systemName: "star"), for: .normal)
        btn.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        btn.tintColor = .systemOrange
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    var btnArray: [UIButton] = []
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    //    required init?(coder: NSCoder) {
    //        fatalError("init(coder:) has not been implemented")
    //    }
    
    private func setupView() {
        self.addSubview(stackView)
        self.translatesAutoresizingMaskIntoConstraints = false
        btnArray.append(btnStar1)
        btnArray.append(btnStar2)
        btnArray.append(btnStar3)
        btnArray.append(btnStar4)
        btnArray.append(btnStar5)

        stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        stackView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        stackView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        
        stackView.addArrangedSubview(btnStar1)
        stackView.addArrangedSubview(btnStar2)
        stackView.addArrangedSubview(btnStar3)
        stackView.addArrangedSubview(btnStar4)
        stackView.addArrangedSubview(btnStar5)
        
        btnStar1.heightAnchor.constraint(equalToConstant: 24).isActive = true
        btnStar2.heightAnchor.constraint(equalToConstant: 24).isActive = true
        btnStar3.heightAnchor.constraint(equalToConstant: 24).isActive = true
        btnStar4.heightAnchor.constraint(equalToConstant: 24).isActive = true
        btnStar5.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        
    }
    
    @objc func btnClicked(sender: UIButton!) {
        disableAllButton()
        let flag = sender.tag
        for index in 0..<flag {
            btnArray[index].setImage(UIImage(systemName: "star.fill"), for: .normal)
        }
    }
    
    func disableAllButton() {
        btnStar1.setImage(UIImage(systemName: "star"), for: .normal)
        btnStar2.setImage(UIImage(systemName: "star"), for: .normal)
        btnStar3.setImage(UIImage(systemName: "star"), for: .normal)
        btnStar4.setImage(UIImage(systemName: "star"), for: .normal)
        btnStar5.setImage(UIImage(systemName: "star"), for: .normal)

    }
    
}
