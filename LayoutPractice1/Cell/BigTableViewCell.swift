//
//  BigTableViewCell.swift
//  LayoutPractice1
//
//  Created by MM on 5/18/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class BigTableViewCell: UITableViewCell {
    
    let imvToConfig: UIImageView = {
        let imv = UIImageView()
        imv.contentMode = .scaleAspectFit
        imv.layer.masksToBounds = true
        imv.translatesAutoresizingMaskIntoConstraints = false
        return imv
    }()
    
    let vwDiagonal: UIView = {
        let vw = UIView()
        vw.transform = vw.transform.rotated(by:  -.pi / 4)
        vw.backgroundColor = .systemYellow
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    let lblDiagonal: UILabel = {
        let lbl = UILabel()
        lbl.text = "LBL"
        lbl.font = UIFont(name: "Helvetica-Bold", size: 16)
        lbl.textColor = .white
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let btnTop: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "star.fill"), for: .normal)
        btn.tintColor = .gray
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let lblTop: UILabel = {
        let lbl = UILabel()
        lbl.text = "First Line"
        lbl.font = UIFont(name: "Helvetica-Bold", size: 20)
        lbl.textColor = UIColor(red: 61/255, green: 72/255, blue: 83/255, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let lblFirst: UILabel = {
        let lbl = UILabel()
        lbl.text = "First / Lorem ipsum"
        lbl.font = UIFont(name: "Helvetica-Light", size: 16)
        lbl.textColor = UIColor(red: 144/255, green: 150/255, blue: 157/255, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let lblSecond: UILabel = {
        let lbl = UILabel()
        lbl.text = "Second / Lorem ipsum"
        lbl.font = UIFont(name: "Helvetica-LightOblique", size: 16)
        lbl.textColor = UIColor(red: 144/255, green: 150/255, blue: 157/255, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let vwContainer: UIView = {
        let vw = UIView()
        vw.backgroundColor = .white
        vw.layer.cornerRadius = 10
        vw.layer.masksToBounds = false
        vw.layer.shadowColor = UIColor.black.cgColor
        vw.layer.shadowOffset = CGSize(width: 0, height: 3)
        vw.layer.shadowRadius = 5
        vw.layer.shadowOpacity = 0.1
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    let vwView: UIView = {
        let vw = UIView()
        vw.backgroundColor = .white
        vw.layer.cornerRadius = 10
        vw.layer.masksToBounds = true
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    let vwTopContainer: UIView = {
        let vw = UIView()
        vw.backgroundColor = .white
        vw.layer.cornerRadius = 10
        vw.layer.masksToBounds = false
        vw.layer.shadowColor = UIColor.black.cgColor
        vw.layer.shadowOffset = CGSize(width: 0, height: 5)
        vw.layer.shadowRadius = 5
        vw.layer.shadowOpacity = 0.5
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    let vwButton: UIView = {
        let vw = UIView()
        vw.backgroundColor = .white
//        vw.layer.masksToBounds = false
//        vw.layer.shadowColor = UIColor.black.cgColor
//        vw.layer.shadowOffset = CGSize(width: 0, height: 5)
//        vw.layer.shadowRadius = 5
//        vw.layer.shadowOpacity = 0.1
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    let stackViewButton: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let vwButton2: UIView = {
        let vw = UIView()
        vw.backgroundColor = UIColor(red: 71/255, green: 171/255, blue: 240/255, alpha: 1)
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    let stackViewHeart: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 2
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let imgHeart1: UIImageView = {
        let img = UIImageView()
        img.tintColor = .systemPink
        img.image = UIImage(systemName: "heart.fill")
        return img
    }()
    
    let imgHeart2: UIImageView = {
        let img = UIImageView()
        img.tintColor = .systemPink
        img.image = UIImage(systemName: "heart.fill")
        return img
    }()
    
    let imgHeart3: UIImageView = {
        let img = UIImageView()
        img.tintColor = .systemPink
        img.image = UIImage(systemName: "heart")
        return img
    }()
    
    let imgHeart4: UIImageView = {
        let img = UIImageView()
        img.tintColor = .systemPink
        img.image = UIImage(systemName: "heart")
        return img
    }()
    
    let imgHeart5: UIImageView = {
        let img = UIImageView()
        img.tintColor = .systemPink
        img.image = UIImage(systemName: "heart")
        return img
    }()
    
    let btnButtonPink: UIButton = {
        let btn = UIButton()
        btn.setTitle("Button", for: .normal)
        btn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 16)
        btn.backgroundColor = UIColor(red: 233/255, green: 30/255, blue: 99/255, alpha: 1)
        btn.layer.cornerRadius = 20
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let btnButtonYellow: UIButton = {
        let btn = UIButton()
        btn.setTitle("Button", for: .normal)
        btn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 16)
        btn.backgroundColor = UIColor(red: 71/255, green: 171/255, blue: 240/255, alpha: 1)
        btn.layer.cornerRadius = 20
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let btnButtonBlue: UIButton = {
        let btn = UIButton()
        btn.setTitle("Button", for: .normal)
        btn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 16)
        btn.backgroundColor = UIColor(red: 71/255, green: 171/255, blue: 240/255, alpha: 1)
        btn.layer.cornerRadius = 4
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let stackViewVertical:UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 36
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let stackViewHorizontal1:UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.spacing = 36
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let stackViewHorizontal2:UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.spacing = 36
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let btnInside1: UIButton = {
        let btn = UIButton()
        btn.setTitle("Label 1", for: .normal)
        btn.setImage(UIImage(systemName: "paperplane.fill"), for: .normal)
        btn.titleLabel?.font = UIFont(name: "Helvetica", size: 14)
        btn.tintColor = .white
        btn.alignTextBelow()
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let btnInside2: UIButton = {
        let btn = UIButton()
        btn.setTitle("Label 2", for: .normal)
        btn.setImage(UIImage(systemName: "paperplane.fill"), for: .normal)
        btn.titleLabel?.font = UIFont(name: "Helvetica", size: 14)
        btn.tintColor = .white
        btn.alignTextBelow()
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let btnInside3: UIButton = {
        let btn = UIButton()
        btn.setTitle("Label 3", for: .normal)
        btn.setImage(UIImage(systemName: "paperplane.fill"), for: .normal)
        btn.titleLabel?.font = UIFont(name: "Helvetica", size: 14)
        btn.tintColor = .white
        btn.alignTextBelow()
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let btnInside4: UIButton = {
        let btn = UIButton()
        btn.setTitle("Label 4", for: .normal)
        btn.setImage(UIImage(systemName: "paperplane.fill"), for: .normal)
        btn.titleLabel?.font = UIFont(name: "Helvetica", size: 14)
        btn.tintColor = .white
        btn.alignTextBelow()
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let btnInside5: UIButton = {
        let btn = UIButton()
        btn.setTitle("Label 5", for: .normal)
        btn.setImage(UIImage(systemName: "paperplane.fill"), for: .normal)
        btn.titleLabel?.font = UIFont(name: "Helvetica", size: 14)
        btn.tintColor = .white
        btn.alignTextBelow()
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let btnInside6: UIButton = {
        let btn = UIButton()
        btn.setTitle("Label 6", for: .normal)
        btn.setImage(UIImage(systemName: "paperplane.fill"), for: .normal)
        btn.titleLabel?.font = UIFont(name: "Helvetica", size: 14)
        btn.tintColor = .white
        btn.alignTextBelow()
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func setupCell() {
        contentView.backgroundColor = UIColor(red: 246/255, green: 248/255, blue: 251/255, alpha: 1)
        contentView.addSubview(vwContainer)
        vwContainer.addSubview(vwView)
        
        vwContainer.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16).isActive = true
        vwContainer.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16).isActive = true
        vwContainer.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16).isActive = true
        vwContainer.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16).isActive = true
        
        vwView.addSubview(vwTopContainer)
        vwView.addSubview(vwButton2)
        vwView.addSubview(btnButtonBlue)
        
        vwTopContainer.addSubview(imvToConfig)
        vwTopContainer.addSubview(vwDiagonal)
        vwTopContainer.addSubview(btnTop)
        vwTopContainer.addSubview(lblTop)
        vwTopContainer.addSubview(lblFirst)
        vwTopContainer.addSubview(lblSecond)
        vwTopContainer.addSubview(vwButton)
        vwTopContainer.addSubview(stackViewHeart)
        
        stackViewHeart.addArrangedSubview(imgHeart1)
        stackViewHeart.addArrangedSubview(imgHeart2)
        stackViewHeart.addArrangedSubview(imgHeart3)
        stackViewHeart.addArrangedSubview(imgHeart4)
        stackViewHeart.addArrangedSubview(imgHeart5)
        
        vwView.topAnchor.constraint(equalTo: vwContainer.topAnchor, constant: 0).isActive = true
        vwView.bottomAnchor.constraint(equalTo: vwContainer.bottomAnchor, constant: 0).isActive = true
        vwView.leftAnchor.constraint(equalTo: vwContainer.leftAnchor, constant: 0).isActive = true
        vwView.rightAnchor.constraint(equalTo: vwContainer.rightAnchor, constant: 0).isActive = true
        
        vwTopContainer.topAnchor.constraint(equalTo: vwContainer.topAnchor, constant: 0).isActive = true
        vwTopContainer.bottomAnchor.constraint(equalTo: vwButton2.topAnchor, constant: 0).isActive = true
        vwTopContainer.leftAnchor.constraint(equalTo: vwContainer.leftAnchor, constant: 0).isActive = true
        vwTopContainer.rightAnchor.constraint(equalTo: vwContainer.rightAnchor, constant: 0).isActive = true
        
        vwDiagonal.topAnchor.constraint(equalTo: vwTopContainer.topAnchor, constant: 0).isActive = true
        vwDiagonal.leftAnchor.constraint(equalTo: vwTopContainer.leftAnchor, constant: -30).isActive = true
        vwDiagonal.heightAnchor.constraint(equalToConstant: 30).isActive = true
        vwDiagonal.widthAnchor.constraint(equalToConstant: 100).isActive = true

        vwDiagonal.addSubview(lblDiagonal)
        
        imvToConfig.topAnchor.constraint(equalTo: vwTopContainer.topAnchor, constant: 10).isActive = true
        imvToConfig.bottomAnchor.constraint(equalTo: lblTop.topAnchor, constant: -10).isActive = true
        imvToConfig.leftAnchor.constraint(equalTo: vwTopContainer.leftAnchor, constant: 40).isActive = true
        imvToConfig.rightAnchor.constraint(equalTo: vwTopContainer.rightAnchor, constant: -40).isActive = true
        imvToConfig.heightAnchor.constraint(equalToConstant: 30).isActive = true

        
        lblDiagonal.topAnchor.constraint(equalTo: vwDiagonal.topAnchor, constant: 4).isActive = true
        lblDiagonal.bottomAnchor.constraint(equalTo: vwDiagonal.bottomAnchor, constant: -4).isActive = true
        lblDiagonal.leftAnchor.constraint(equalTo: vwDiagonal.leftAnchor, constant: 4).isActive = true
        lblDiagonal.rightAnchor.constraint(equalTo: vwDiagonal.rightAnchor, constant: -4).isActive = true
        
        btnTop.topAnchor.constraint(equalTo: vwTopContainer.topAnchor, constant: 10).isActive = true
        btnTop.rightAnchor.constraint(equalTo: vwTopContainer.rightAnchor, constant: -10).isActive = true
        btnTop.heightAnchor.constraint(equalToConstant: 30).isActive = true
        btnTop.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        lblTop.centerXAnchor.constraint(equalTo: vwTopContainer.centerXAnchor).isActive = true
        //lblTop.topAnchor.constraint(equalTo: vwTopContainer.topAnchor, constant: 28).isActive = true
        lblTop.bottomAnchor.constraint(equalTo: lblFirst.topAnchor, constant: -12).isActive = true
        
        lblFirst.centerXAnchor.constraint(equalTo: vwTopContainer.centerXAnchor).isActive = true
        lblFirst.bottomAnchor.constraint(equalTo: lblSecond.topAnchor, constant: -10).isActive = true
        
        lblSecond.centerXAnchor.constraint(equalTo: vwTopContainer.centerXAnchor).isActive = true
        lblSecond.bottomAnchor.constraint(equalTo: stackViewHeart.topAnchor, constant: -10).isActive = true
        
        stackViewHeart.centerXAnchor.constraint(equalTo: vwTopContainer.centerXAnchor).isActive = true
        stackViewHeart.bottomAnchor.constraint(equalTo: vwButton.topAnchor, constant: -10).isActive = true
        
        vwButton.leftAnchor.constraint(equalTo: vwTopContainer.leftAnchor, constant: 0).isActive = true
        vwButton.rightAnchor.constraint(equalTo: vwTopContainer.rightAnchor, constant: 0).isActive = true
        vwButton.bottomAnchor.constraint(equalTo: vwTopContainer.bottomAnchor, constant: 0).isActive = true
        
        vwButton.addSubview(stackViewButton)
        
        stackViewButton.topAnchor.constraint(equalTo: vwButton.topAnchor, constant: 10).isActive = true
        stackViewButton.bottomAnchor.constraint(equalTo: vwButton.bottomAnchor, constant: -10).isActive = true
        stackViewButton.leftAnchor.constraint(equalTo: vwButton.leftAnchor, constant: 10).isActive = true
        stackViewButton.rightAnchor.constraint(equalTo: vwButton.rightAnchor, constant: -10).isActive = true
        
        stackViewButton.addArrangedSubview(btnButtonPink)
        stackViewButton.addArrangedSubview(btnButtonYellow)
        
        btnButtonPink.heightAnchor.constraint(equalToConstant: 40).isActive = true
        btnButtonYellow.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        vwButton2.bottomAnchor.constraint(equalTo: btnButtonBlue.topAnchor, constant: -10).isActive = true
        vwButton2.leftAnchor.constraint(equalTo: vwView.leftAnchor, constant: 0).isActive = true
        vwButton2.rightAnchor.constraint(equalTo: vwView.rightAnchor, constant: 0).isActive = true
        vwButton2.heightAnchor.constraint(equalToConstant: 160).isActive = true
        
        vwButton2.addSubview(stackViewVertical)
        
        stackViewVertical.topAnchor.constraint(equalTo: vwButton2.topAnchor, constant: 20).isActive = true
        stackViewVertical.bottomAnchor.constraint(equalTo: vwButton2.bottomAnchor, constant: -20).isActive = true
        stackViewVertical.leftAnchor.constraint(equalTo: vwButton2.leftAnchor, constant: 0).isActive = true
        stackViewVertical.rightAnchor.constraint(equalTo: vwButton2.rightAnchor, constant: 0).isActive = true
        
        
        stackViewVertical.addArrangedSubview(stackViewHorizontal1)
        stackViewVertical.addArrangedSubview(stackViewHorizontal2)
        
        stackViewHorizontal1.addArrangedSubview(btnInside1)
        stackViewHorizontal1.addArrangedSubview(btnInside2)
        stackViewHorizontal1.addArrangedSubview(btnInside3)
        
        stackViewHorizontal2.addArrangedSubview(btnInside4)
        stackViewHorizontal2.addArrangedSubview(btnInside5)
        stackViewHorizontal2.addArrangedSubview(btnInside6)
        
        
        btnButtonBlue.bottomAnchor.constraint(equalTo: vwView.bottomAnchor, constant: -10).isActive = true
        btnButtonBlue.leftAnchor.constraint(equalTo: vwView.leftAnchor, constant: 10).isActive = true
        btnButtonBlue.rightAnchor.constraint(equalTo: vwView.rightAnchor, constant: -10).isActive = true
        btnButtonBlue.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        vwView.bringSubviewToFront(vwTopContainer)
    }
    
    func configWithImage(img: UIImage) {
        imvToConfig.image = img
    }
    
}

extension UIButton {
    func alignTextBelow(spacing: CGFloat = 6.0) {
        if let image = self.imageView?.image {
            let imageSize: CGSize = image.size
            self.titleEdgeInsets = UIEdgeInsets(top: spacing, left: -imageSize.width, bottom: -(imageSize.height), right: 0.0)
            let labelString = NSString(string: self.titleLabel!.text!)
            let titleSize = labelString.size(withAttributes: [NSAttributedString.Key.font: self.titleLabel!.font!])
            self.imageEdgeInsets = UIEdgeInsets(top: -(titleSize.height + spacing), left: 0.0, bottom: 0.0, right: -titleSize.width)
        }
    }
}
