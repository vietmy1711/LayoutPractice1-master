//
//  SmallTableViewCell.swift
//  LayoutPractice1
//
//  Created by MM on 5/18/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class SmallTableViewCell: UITableViewCell {

    let vwView:UIView = {
        let vw = UIView()
        vw.backgroundColor = .red
        return vw
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
        contentView.backgroundColor = .blue
        contentView.addSubview(vwView)
        
        vwView.translatesAutoresizingMaskIntoConstraints = false
        vwView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8).isActive = true
        vwView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8).isActive = true
        vwView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 8).isActive = true
        vwView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -8).isActive = true
        vwView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
}
